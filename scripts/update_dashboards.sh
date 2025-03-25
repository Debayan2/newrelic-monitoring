#!/bin/bash
echo "Updating dashboards..."
newrelic dashboards update --file dashboards/dashboard.json
newrelic dashboards update --file dashboards/custom_dashboard.json
echo "Dashboards updated!"
