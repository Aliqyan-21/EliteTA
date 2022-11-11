#!/bin/bash

# Build the project
echo "Building the project..."
python -m pip install -r requirements.txt

echo "Make Migrations..."
python manage.py makemigrations 
python manage.py migrate 

echo "Collect static..."
python manage.py collectstatic
