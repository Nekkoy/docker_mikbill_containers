> [!IMPORTANT]
> Its requeue you have own docker registry or docker hub account

Download the files of the required version from mikbill and place them in **files** directory<br>
Enter build directory and run the command:

```
docker build -t USERNAME/admin:VERSION -f container.dockerfile .
docker push USERNAME/admin:VERSION
```
