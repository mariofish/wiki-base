# Find all markdown files
MARKDOWN=$(shell find ./docs -iname "*.md")
# Form all 'html' counterparts
HTML=$(MARKDOWN:.md=.html)

.PHONY = init all clean serve

all: $(HTML)

%.html: %.md
	pandoc --from markdown --to html $< -o $@ \
		--standalone \
		-c /wiki-base/css/style.css \
		-H ./_build/parts/head.html \
		-B ./_build/parts/header.html \
		-A ./_build/parts/footer.html \
		--lua-filter=./_build/filters/links-to-html.lua \
		--lua-filter=./_build/filters/promote-headers.lua \
		--lua-filter=./_build/filters/breadcrumb-menu.lua

init:
	cp -r ./wiki/* ./docs
	cp -r ./_build/css ./docs

clean:
	rm $(MARKDOWN)

serve:
	ruby serve.rb
