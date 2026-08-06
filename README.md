# php-project-skeleton

Шаблон для простых проектов на php, с поддержкой минимально необходимого локального окружения в docker.

Статья на хабре, что это такое: [Докеризированные команды и make, как стандартная точка в проект. Быстрый способ запуска разработки проекта на php](https://habr.com/ru/post/687992/).


После клонирования (форка) необходимо заменить имя вендора (samizdam) и проекта (skeleton) на свои. 


```bash
git clone git@github.com:samizdam/php-project-skeleton.git super-poject-name && cd super-poject-name

# copy dev.env and customize or set all listed and required vars in your environment. 
# also, you can pass environment file with $ENV_FILE
PATH=$(pwd)/bin:$PATH # if you want use dockerized php, composer, etc instead localhost

make install
make test
```
