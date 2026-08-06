# php-project-skeleton

Шаблон для простых проектов на php, с поддержкой минимально необходимого локального окружения в docker.

Статья на хабре, что это такое: [Докеризированные команды и make, как стандартная точка в проект. Быстрый способ запуска разработки проекта на php](https://habr.com/ru/post/687992/).

После клонирования необходимо заменить имя вендора (samizdam) и проекта (skeleton) на свои. 


```bash
git clone git@github.com:samizdam/php-project-skeleton.git --origin=skeleton super-poject-name && cd super-poject-name

# if you want use dockerized php, composer, etc instead localhost:
# copy docker.env and customize or set all listed and required vars to your environment. 
# also, you can pass environment file path with $ENV_FILE
make build-docker 
PATH=$(pwd)/bin:$PATH 

make install
make test
```
