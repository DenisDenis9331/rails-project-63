# Makefile

install: # install dependencies
	bundle install

lint: # check code style
	bundle exec rubocop

tests: # run tests
	bundle exec rake test
