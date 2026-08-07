ENV_FILE ?= .env
-include $(ENV_FILE)

build-docker:
	docker build -t $(PHP_DEV_IMAGE):$(REVISION) .

install: 
	composer install
	cp -n phpunit.xml.dist phpunit.xml

test:
	php vendor/bin/phpunit
