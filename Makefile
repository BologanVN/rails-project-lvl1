install:
	bundle install

lint:
	bundle exec rubocop

tests:
	ruby my_test.rb -v
