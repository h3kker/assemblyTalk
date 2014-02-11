use Bio::DB::Sam;
use Bio::DB::Sam::Constants;
use File::Basename;
use strict;

my $file = shift @ARGV;
my $sam = Bio::DB::Sam->new(-bam => $file);

my $pileup=basename($file).".pileup.tab";

#my $it = $sam->features(-iterator => 1, -flags => { UNMAPPED => 0 });

my @ref = @{$sam->header->target_name};
my $lens = $sam->header->target_len;
my %p;
for my $tid (0..$#ref) {
	print $ref[$tid]."\r"; $|=1;
	$p{$ref[$tid]}||={length => $lens->[$tid]};
	$sam->pileup($ref[$tid], sub {
		my ($seqid, $pos, $pileup) = @_;
		$p{$seqid}->{positions}++;
		$p{$seqid}->{depth}+= @$pileup;
	});
}

open OF, ">$pileup" or die "Open $pileup: $!";
print OF "seq\tlen\tcoverage\tdepth\n";
for my $seq (keys %p) {
	print OF join "\t", $seq, $p{$seq}->{length}, $p{$seq}->{positions}/$p{$seq}->{length}, $p{$seq}->{depth}/$p{$seq}->{length};
	print OF "\n";
}
close OF;
