install:
	bundle install

lint:
	bundle exec rubocop

tests:
	ruby -I test:lib test/my_test.rb
