setup: install

install:
	bundle install

test:
	rake test

lint:
	rubocop

lint-fix:
	rubocop -a

.PHONY: test
