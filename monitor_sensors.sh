#!/bin/bash

echo "🔍 Monitoring sensors..."

while true
do
  # Simulated sensor check (replace with real check)
  SENSOR_STATUS=$((RANDOM % 10))

  if [ "$SENSOR_STATUS" -eq 0 ]; then
    echo " Sensor failure detected!"
    /app/stop_sensors.sh
  fi

  echo "Sensors OK"
  sleep 5
done
