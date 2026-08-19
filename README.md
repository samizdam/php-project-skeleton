# php-project-skeleton

Шаблон для простых проектов на php, с поддержкой минимально необходимого локального окружения в docker.

> Это не фреймворк и не библиотека. 


## Установка и настройка

```bash
git clone git@github.com:samizdam/php-project-skeleton.git --origin=skeleton --no-tags super-poject-name && cd super-poject-name

# Optional: if your want some "meat", not only bare bones, checkout to favorite branch. 
# For example, start with included di:
git checkout feat/di

# Optional: if you want use dockerized php, composer, etc - instead locally installed. 
# copy docker.env and customize or set all listed and required vars to your environment.
# also, you can pass environment file path with $ENV_FILE
make build-docker
PATH=$(pwd)/bin:$PATH

make install
make test

# Recommended: for replace samizdam/skeleton templates entries with actual project attributes - set in your dotenv file 
make change-vendor

# Finally add your origin of new project
git remote add origin your-new-origin-for-project 
```

## About

Задача репозитория - быстрое развёртывание проектов на массово доступном и современном free/open source стеке по востребованным в практике шаблонам. 

Репозиторий использует следующую модель ветвления и версионирования:
- branch:`main` - всегда остаётся минималистичным. semver tagged releases и changelog происходят из этой ветки.
- branches:`feat/*` - содержат скелетоны определённой направленности с дополнительными зависимостями в composer / dockerfile и минимальным рабочим кодом для расширения. Они обновляются из main, и могут иметь общую историю.  

> Для навигации по имеющимся веткам можно смотреть отмеченные PR: https://github.com/samizdam/php-project-skeleton/pulls?q=is%3Aopen+is%3Apr+label%3A%22feature+branch%22

## See Also

- [Докеризированные команды и make, как стандартная точка в проект. Быстрый способ запуска разработки проекта на php](https://habr.com/ru/post/687992/) - статья на Хабре с первоначальным описанием идеи.
- https://github.com/flemay/3musketeers - реализация похожего шаблона разработки, но с привязкой к инфраструктуре Cloudflare. 
