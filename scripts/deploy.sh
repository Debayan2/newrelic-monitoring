#!/bin/bash
echo "Deploying New Relic configurations..."

# Apply alert policies
newrelic alerts policy create --file alerts/cpu_alert_policy.json
newrelic alerts policy create --file alerts/memory_alert_policy.json

# Apply dashboards
newrelic dashboards create --file dashboards/dashboard.json
newrelic dashboards create --file dashboards/custom_dashboard.json

# Apply synthetic monitors
newrelic synthetics monitor create --file synthetic-monitoring/uptime_check.json
newrelic synthetics monitor create --file synthetic-monitoring/api_monitor.json

echo "Deployment completed!"
