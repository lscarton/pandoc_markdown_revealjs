download-revealjs:
	mkdir -p lib
	curl \
		--output lib/4.6.0.tar.gz \
		--progress-bar \
		--location \
		--url "https://github.com/hakimel/reveal.js/archive/4.6.0.tar.gz"
	tar -zxf lib/4.6.0.tar.gz
	mv reveal.js-4.6.0 reveal.js
	curl \
		--output lib/reveal.js-plugins-4.2.5.tar.gz \
		--progress-bar \
		--location \
		--url "https://github.com/rajgoel/reveal.js-plugins/archive/3.9.0.tar.gz"
	tar -zxf lib/reveal.js-plugins-4.2.5.tar.gz -C lib/
	mv lib/reveal.js-plugins-4.2.5/* reveal.js/plugin/

# https://pandoc.org/
build:
	pandoc \
		--standalone \
		--mathjax -i\
		--to=revealjs \
		--output=dist/index.html \
		--slide-level=2 \
		-V theme="sky" \
		src/title.yml \
		src/slides.md

# https://docs.python.org/3/library/http.server.html
http:
	python -m http.server --directory=dist

