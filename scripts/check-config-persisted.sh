#!/usr/bin/env bash

# Check that value is preserved
python manage.py shell -c "from constance import config;print(config.CUSTOM_SETTING);assert config.CUSTOM_SETTING == 2"