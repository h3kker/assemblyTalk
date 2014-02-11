#!/usr/bin/perl

use Bio::DB::Sam;
use Bio::DB::Sam::Constants;
use File::Basename;
use strict;

my $file = shift @ARGV;
my $sam = Bio::DB::Sam->new(-bam => $file);

my $subs_out=basename($file).".substitutions.tab";
my $aln_out=basename($file).".align.tab";

my @ref = @{$sam->header->target_name};
my $lens = $sam->header->target_len;
my %ctgs = map { $ref[$_] => $lens->[$_] } 0..$#ref;

my $it = $sam->features(-iterator => 1, -flags => { UNMAPPED => 0 });
my %subs;
my %ins;
my %del;
my %clip_begin;
my %clip_end;
my %len;
my %all;
while(my $aln = $it->next_seq) {
	$all{$aln->query->name.'%'.$aln->seq_id}++;
	print scalar keys %all; print "\r"; $|=1;
	$len{$aln->query->name.'%'.$aln->seq_id}+=$aln->length;
	my ($ref, $match, $qu) = $aln->padded_alignment;
	if ($ref ne $qu) {
		my $diff = $ref ^ $qu;
		while($diff=~/[^\0]/g) {
			$subs{substr($ref, pos($diff)-1, 1).'%'.substr($qu, pos($diff)-1,1)}++;
		}
		my @cig = @{$aln->cigar_array};
		if ($cig[0]->[0] eq 'S') {
			$clip_begin{$aln->query->name.'%'.$aln->seq_id}+=$cig[0]->[1];
		}
		if ($cig[$#cig]->[0] eq 'S') {
			$clip_end{$aln->query->name.'%'.$aln->seq_id}+=$cig[$#cig]->[1];
		}
		for my $c (@cig) {
			if ($c->[0] eq 'I') {
				$ins{$aln->query->name.'%'.$aln->seq_id}+=$c->[1];
			}
			if ($c->[0] eq 'D') {
				$del{$aln->query->name.'%'.$aln->seq_id}+=$c->[1];
			}
		}
	}
	#last if scalar keys %all > 1000;
}

open OF, ">$subs_out" or die("open $subs_out: $!");
print OF "ref\tqu\tcount\n";
for my $ch (keys %subs) {
	my @f = split('%', $ch);
	print OF $f[0]."\t".$f[1]."\t".$subs{$ch}."\n";
}
close OF;

open OF, ">$aln_out" or die("open $aln_out: $!");
print OF "ref\tqu\tqulen\tcount\tlen\tclip_begin\tclip_end\tins\tdel\n";
for my $a (keys %all) {
	my @a = split '%', $a;
	print OF join "\t", $a[0], $a[1], $ctgs{$a[1]}, $all{$a}, $len{$a}, ($clip_begin{$a}||0), ($clip_end{$a}||0), ($ins{$a}||0), ($del{$a}||0);
	delete $ctgs{$a[1]};
	print OF "\n";
}
for my $ctg (keys %ctgs) {
	print OF join "\t", '', $ctg, $ctgs{$ctg}, '', '', '', '', '', '';
	print OF "\n";
}
close OF;
