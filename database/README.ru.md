[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![ua](https://img.shields.io/badge/lang-ua-yellow.svg)](README.ua.md)
[![ru](https://img.shields.io/badge/lang-ru-blue.svg)](README.ru.md)

> [!IMPORTANT]
> Для этого у вас должен быть собственный docker registry или аккаунт в docker hub


Для сборки арбитратора:

```
docker build -t USERNAME/arbitrator:VERSION -f arbitrator.dockerfile .
docker push USERNAME/arbitrator:VERSION
```

Для сборки базы данных:

```
docker build -t USERNAME/database:VERSION -f database.dockerfile .
docker push USERNAME/database:VERSION
```
