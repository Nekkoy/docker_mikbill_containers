[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![ua](https://img.shields.io/badge/lang-ua-yellow.svg)](README.ua.md)
[![ru](https://img.shields.io/badge/lang-ru-blue.svg)](README.ru.md)

> [!IMPORTANT]
> Для этого у вас должен быть собственный docker registry или аккаунт в docker hub

Загрузите файлы модуля админки нужной версии с mikbill, распакуйте и разместите index.php в директории **files**
Войдите в каталог сборки и выполните команду:

```
docker build -t USERNAME/payments:VERSION -f container.dockerfile .
docker push USERNAME/payments:VERSION
```
