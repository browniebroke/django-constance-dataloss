#!/usr/bin/env bash

# Upgrade to django-constance 3.0
pip install django-constance==3.0

# Remove 'constance.backends.database' from INSTALLED_APPS
python << END
from pathlib import Path

settings = Path.cwd() / "dataloss" / "settings.py"
settings_str = settings.read_text()
settings_str = settings_str.replace(
'    "constance.backends.database",\n',
'',
)
settings.write_text(settings_str)
END

# Run migrations again, should migrate settings to new format
python manage.py migrate
