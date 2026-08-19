ENV_FILE ?= .env
-include $(ENV_FILE)

build-docker:
	docker build --build-arg PHP_VERSION=$(PHP_VERSION) -t $(PHP_DEV_IMAGE):$(REVISION) .

install:
	composer install
	vendor/bin/phpunit --generate-configuration

test:
	vendor/bin/phpunit

change-vendor:
	jq --indent 4 ".name = \"$(COMPOSER_PKG_NAME)\"" composer.json > composer.json.tmp
	mv composer.json.tmp composer.json
