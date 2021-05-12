#!/bin/sh
echo 'export APP_PATH="/home/site/wwwroot"' >> ~/.bashrc
echo 'cd $APP_PATH' >> ~/.bashrc

# Enter the source directory to make sure the script runs where the user expects
cd /home/site/wwwroot

export APP_PATH="/home/site/wwwroot"
if [ -z "$HOST" ]; then
		export HOST=0.0.0.0
fi

export PORT=8000

export PATH="/opt/python//bin:${PATH}"
echo 'export VIRTUALENVIRONMENT_PATH="/home/site/wwwroot/antenv"' >> ~/.bashrc
echo '. antenv/bin/activate' >> ~/.bashrc
  echo WARNING: Could not find virtual environment directory '/home/site/wwwroot/antenv'.
  echo WARNING: Could not find package directory '/home/site/wwwroot/__oryx_packages__'.
GUNICORN_CMD_ARGS="--timeout 600 --access-logfile '-' --error-logfile '-' --bind=0.0.0.0:8000 --chdir=/home/site/wwwroot" gunicorn app:app


