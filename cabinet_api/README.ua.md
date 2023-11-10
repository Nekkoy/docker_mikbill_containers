[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![ua](https://img.shields.io/badge/lang-ua-yellow.svg)](README.ua.md)
[![ru](https://img.shields.io/badge/lang-ru-blue.svg)](README.ru.md)

> [!IMPORTANT]
> Для цього у вас потрібен бути власний docker registry або аккаунт у docker hub

Завантажте файли потрібної версії з mikbill, розпакуйте та розмістіть їх у директорії **files**
Увійдіть у каталог збірки та виконайте команду:

```
docker build -t USERNAME/cabinet_api:VERSION -f container.dockerfile .
docker push USERNAME/cabinet_api:VERSION
```
