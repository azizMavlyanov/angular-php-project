# Blog Post

## Author

Aziz Mavlyanov

## Stack

HTML, CSS, JavaScript, Angular, PHP, Laravel, MySQL

## Installation and usage of the project

**Please make sure that you have docker and docker-compose installed on your PC (Notebook)**

1\) Set up **JWT_SECRET**, **MAIL_PASSWORD**, **MAIL_USERNAME** args with your own credentials in docker-compose.yaml:

You can assign any secret value to **JWT_SECRET**, but for **MAIL_PASSWORD, MAIL_USERNAME** you are supposed to assign your own gmail credentials.

2\) Run containers from the root of the project:

```dotenv
sudo docker-compose up -d --build --force-recreate
```

3\) Run migrations for MySQL database:

```dotenv
sudo docker-compose exec laravel-back /app/run.sh
```

4\) Visit http://localhost:4200/ and start using the app

**MySQL database is persistent** since data located in volume.
