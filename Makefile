# Find all markdown files
MARKDOWN=$(shell find ./gh-pages -iname "*.md")
# Form all 'html' counterparts
HTML=$(MARKDOWN:.md=.html)

.PHONY = init all clean serve

all: $(HTML)

%.html: %.md
	pandoc --from markdown --to html $< -o $@ \
		--standalone \
		-c /wiki-base/css/style.css \
		--template=./_build/template.html \
		--lua-filter=./_build/filters/links-to-html.lua \
		--lua-filter=./_build/filters/promote-headers.lua \
		--lua-filter=./_build/filters/breadcrumb-menu.lua

init:
	mkdir -p ./gh-pages
	rm -rf ./gh-pages/*
	cp -r ./wiki/* ./gh-pages
	cp -r ./_build/css ./gh-pages

clean:
	rm $(MARKDOWN)

serve:
	ruby serve.rb
