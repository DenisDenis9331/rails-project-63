# Makefile

install: # установить зависимости
	bundle install

lint: # проверить стиль кода
	bundle exec rubocop

tests: # запустить тесты
	bundle exec rake test
