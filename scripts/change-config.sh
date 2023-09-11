#!/usr/bin/env bash

# Run migrations
python manage.py migrate

# Change the default value
python manage.py shell -c "from constance import config;config.CUSTOM_SETTING = 2"
