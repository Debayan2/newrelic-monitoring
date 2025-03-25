#!/bin/bash
echo "Updating alert policies..."
newrelic alerts policy update --file alerts/cpu_alert_policy.json
newrelic alerts policy update --file alerts/memory_alert_policy.json
echo "Alerts updated!"
