ENV_FILE=-.env
-include $(ENV_FILE:-.env)

install: build
	composer install
	cp -n phpunit.xml.dist phpunit.xml

build-docker:
	docker build -t $(PHP_DEV_IMAGE):$(REVISION) .

test:
	php vendor/bin/phpunit

