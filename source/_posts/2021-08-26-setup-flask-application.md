---
title: setup_flask_application
abbrlink: 80d36e57
date: 2021-08-26 10:04:39
categories:
tags:
---
## Flask application using development server
1. Use application factory to create instances of your Flask app
2. Modular application with Blueprint
3. Set static folder
4. Allow cross-domain request if needed

## Flask application deployment for production
1. Run application by gunicorn, nginx, and supervisor
2. Deploy application using docker container and docker-compose

## Add mysql module
1. Make sure mysql is activated completely before gunicorn
2. Create database if not exist
3. Use flask-sqlalchemy to access database
4. Start mysql service by docker-compose

## Add crontab module
1. Fetch environment and enabled for cron commands if needed
2. run-one can guatantee a task only be executed once at the same time
3. Start cron process by supervisor