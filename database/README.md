[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![ua](https://img.shields.io/badge/lang-ua-yellow.svg)](README.ua.md)
[![ru](https://img.shields.io/badge/lang-ru-blue.svg)](README.ru.md)

> [!IMPORTANT]
> Its requeue you have own docker registry or docker hub account

For arbitrator use:

```
docker build -t USERNAME/arbitrator:VERSION -f arbitrator.dockerfile .
docker push USERNAME/arbitrator:VERSION
```

For database use:

```
docker build -t USERNAME/database:VERSION -f database.dockerfile .
docker push USERNAME/database:VERSION
```
