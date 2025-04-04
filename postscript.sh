#!/bin/bash

# Navigate to the directory where the Flask app is deployed
cd /home/ubuntu

# Make sure any environment variables are set if needed (you can use AWS Secrets Manager if sensitive info)
export FLASK_APP=app.py
export FLASK_ENV=production

# Restart the Flask application (assuming it is running as a background process)
# This assumes you are using gunicorn or a similar process manager for Flask
# You can adjust this depending on how the Flask app is run

echo "Restarting Flask application..."

# Kill any running instances of the Flask app on port 5000
pkill -f "flask run"

# Start the Flask app using gunicorn (or any other production server you're using)
# Make sure gunicorn is installed or adjust accordingly
gunicorn -w 4 -b 0.0.0.0:5000 app:app &

# Optional: You can also add any other post-deployment steps like:
# - Setting up any permissions
# - Checking if the app is up and running
# - Sending a notification or logging the deployment status

echo "Flask application restarted successfully on EC2."

# Add any other finalization steps or logging here
