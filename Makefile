# Find all markdown files
MARKDOWN=$(shell find ./docs -iname "*.md")
# Form all 'html' counterparts
HTML=$(MARKDOWN:.md=.html)

.PHONY = init all clean

all: $(HTML)

%.html: %.md
	pandoc --from markdown --to html $< -o $@ \
		--lua-filter=./_build/filter/links-to-html.lua \
		-s -c /wiki-base/css/style.css \
		-B ./_build/parts/header.html \
		-A ./_build/parts/footer.html

init:
	cp -r ./wiki/* ./docs
	cp -r ./_build/css ./docs

clean:
	rm $(MARKDOWN)
