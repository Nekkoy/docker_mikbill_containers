[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![ua](https://img.shields.io/badge/lang-ua-yellow.svg)](README.ua.md)
[![ru](https://img.shields.io/badge/lang-ru-blue.svg)](README.ru.md)

> [!IMPORTANT]
> Для цього у вас потрібен бути власний docker registry або аккаунт у docker hub


Для збирання арбітратора:

```
docker build -t USERNAME/arbitrator:VERSION -f arbitrator.dockerfile .
docker push USERNAME/arbitrator:VERSION
```

Для збирання бази даних:

```
docker build -t USERNAME/database:VERSION -f database.dockerfile .
docker push USERNAME/database:VERSION
```