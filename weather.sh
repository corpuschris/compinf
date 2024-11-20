#!/bin/bash

# Navigate to the weather directory
cd data/weather

# Generate a timestamp in the format YYYYmmdd_HHMMSS
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# URL for the weather data
URL="https://prodapi.metweb.ie/observations/athenry/today"

# Download the weather data and save it with a timestamped filename
curl --ssl-no-revoke -o "${TIMESTAMP}.json" "$URL"

# Notify the user
echo "Weather data saved as ${TIMESTAMP}.json in data/weather"
