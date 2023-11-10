[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![ua](https://img.shields.io/badge/lang-ua-yellow.svg)](README.ua.md)
[![ru](https://img.shields.io/badge/lang-ru-blue.svg)](README.ru.md)

> [!IMPORTANT]
> Its requeue you have own docker registry or docker hub account

Download admin module file of the required version from mikbill, unpack and place index.php in **exec** directory<br>
Enter build directory and run the command:

```
docker build -t USERNAME/exec:VERSION -f container.dockerfile .
docker push USERNAME/exec:VERSION
```
