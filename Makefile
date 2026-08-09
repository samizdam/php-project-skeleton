ENV_FILE ?= .env
-include $(ENV_FILE)

build-docker:
	docker build -t $(PHP_DEV_IMAGE):$(REVISION) .

install:
	composer install
	vendor/bin/phpunit --generate-configuration

test:
	vendor/bin/phpunit

change-vendor:
	jq '.name = "$(COMPOSER_PKG_NAME)"' composer.json > composer.json


