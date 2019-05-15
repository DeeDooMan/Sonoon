# Sonoon.kg

Sonoon - новостное веб-приложение

## Введение

Это руководство поможет вам загрузить проект и запустить на вашей локальной машине. Перейдите в Диплоинг для того чтобы узнать, как развернуть проект на Heroku.com.
### Предустановки

Какие программы нужно установить:

* [JDK 1.8](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) - версия JDK 
* [Maven](https://maven.apache.org/) - Мэвен
* [PostgreSQL 9.3](https://www.pgadmin.org/download/pgadmin-3-windows/) - база данных

### Установка

Пошаговая установка приложения на локальную машину. Для этого нужно открыть ваш терминал.

Создаем папку ***sonoon***:
```
mkdir sonoon
```
Переходим в неё:

```
cd sonoon
```
Загружаем в эту папку проект:
```
git clone https://github.com/DeeDooMan/Sonoon
```
Переходим в проект:

```
cd Sonoon
```

Открываем файл  ***application.properties*** и меняем на следующие значения:
```
spring.datasource.url=jdbc:postgresql://localhost:5432/${название вашей базы данных}
spring.datasource.username=${имя пользователя}
spring.datasource.password=${пароль}
```
Создаем папку ***uploads*** - (нужен для локального хранения изображений)
```
mkdir uploads
```

Затем меняем значение:
```
upload.path=${путь до uploads}
```

Теперь мы пожем запустить наше приложение:
```
cd sonoon/src/main/java/com.example.sonoon/Application.java

Ctrl+Shift+F10
```

## Запустить тесты

Чтобы запустить тесты выполните следующие команды:
```
cd sonoon/src/main/java/com.example.sonoon/service/UserServiceTest.java

Ctrl+Shift+F10
```

### Для чего эти тесты

Это простые юнит тесты которые используют [Mock](https://site.mockito.org/)


## Диплоинг
 
 Как сервер для диплоинга нашего проекта выбрали [Heroku.com](https://www.heroku.com/)

 Шаг 1: Установка [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)
 
 Шаг 2: Переходим в наш проект
 ```
 cd Sonoon
 ```
 Шаг 2: Раскомментируем следующие файлы:
  ```
 Sonoon\src\main\java\com\example\sonoon\config\DatabaseConfig.java  - полностью весь класс
 
 
 Sonoon\src\main\resources\application.properties - следуюшие строки:
 
 #spring.datasource.driverClassName=org.postgresql.Driver
 #spring.datasource.maxActive=10
 #spring.datasource.maxIdle=5
 #spring.datasource.minIdle=2
 #spring.datasource.initialSize=5
 #spring.datasource.removeAbandoned=true
 ```
 Шаг 2: Выполняем слудуюшие команды через терминал:
 ```
 heroku login
 
 heroku create
 
 git push heroku master
 
 heroku ps:scale web=1
 
 heroku open
 ```
 

##Структура папок
```
  sonoon                                             
    ├── src/                       
    │   └── main/                   
    │        ├── java/                       
    │        │     └── com.example.sonoon/ 
    │        │            ├── config/
    │        │            │     ├── DatabaseConfig.java 
    │        │            │     ├── MailConfig.java
    │        │            │     ├── MvcConfig.java
    │        │            │     └── WebSecurityConfig.java
    │        │            ├── controller/
    │        │            │     ├── CategoryController.java
    │        │            │     ├── ControllerUtils.java
    │        │            │     ├── MainController.java
    │        │            │     ├── RegistrationController.java
    │        │            │     └── UserController.java
    │        │            ├── domain/
    │        │            │     ├── Category.java
    │        │            │     ├── Message.java
    │        │            │     ├── Role.java
    │        │            │     ├── User.java
    │        │            │     └── UserGmail.java
    │        │            ├── repos/
    │        │            │     ├── CategoryRepo.java
    │        │            │     ├── MessageRepo.java
    │        │            │     ├── UserGmailRepo.java.java
    │        │            │     └── UserRepo.java
    │        │            ├── service/
    │        │            │     ├── MailSender.java
    │        │            │     ├── UserServiceTest.java
    │        │            │     └── UserSevice.java
    │        │            └── Application.java
    │        └── resources/   
    │               ├── db.migration/   
    │               ├── static/   
    │               ├── templates/   
    │               ├── uploads/   
    │               └── application.properties   
    ├── .gitignore                 
    ├── pom.xml                 
    └── README.md                                                       
```

## Авторы

***Абдулло Каримов*** -
***Азирет Шеров*** -
***Адис Джумадылов*** -
***Жамиля Мажитова*** -
***Айсулуу Джумабекова*** -
***Самара Нурланова*** -
***Айдана Талантбекова*** -
***Атай Исаев*** -
***Бекболот Нурманбетов*** -
***Бекбулат Ташболотов*** -
***Кылымбек Мавлянов*** -
***Бакай Кыдырбек уулу*** 