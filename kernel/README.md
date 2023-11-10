[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![ua](https://img.shields.io/badge/lang-ua-yellow.svg)](README.ua.md)
[![ru](https://img.shields.io/badge/lang-ru-blue.svg)](README.ru.md)

> [!IMPORTANT]
> Its requeue you have own docker registry or docker hub account

Download admin module file of the required version from mikbill, unpack and place mikbill.php in **kernel** directory<br>
Enter build directory and run the command:

```
docker build -t USERNAME/kernel:VERSION -f kernel.dockerfile .
docker push USERNAME/kernel:VERSION
```
