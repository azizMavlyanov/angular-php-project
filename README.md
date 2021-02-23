# Blog Post

## Author

Aziz Mavlyanov

## Stack

HTML, CSS, JavaScript, Angular, PHP, Laravel, MySQL

## Installation and usage of the project

**Please make sure that you have docker and docker-compose installed on your PC (Notebook)**

1\) Run containers from the root of the project:

```dotenv
sudo docker-compose up -d --build --force-recreate
sudo docker-compose exec laravel-back /app/run.sh
```

2\) Visit http://localhost:4200/ and start using the app

**MySQl database is persistent (in memory)** since data located in volume.
