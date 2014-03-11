for slides in slides.md biologistSlides.md; do
	out=$(basename $slides .md).html
	if [ "$slides" -nt "$out" ]; then
		echo "Creating $out..."
		pandoc -t revealjs -V theme=simple -V transition=linear -V width=1280 -s $slides -o $out
	fi
done
