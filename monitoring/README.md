# Monitoring

Stack: Prometheus + Grafana, defined in `docker-compose.yml`.

## Files
- `monitoring/prometheus.yml` - Prometheus configuration (also copied to
  `prometheus.yml` in the repo root). Scrape interval 15s, jobs:
  `prometheus`, `expense-manager-app`, `docker-compose-services`.
- `monitoring/grafana-dashboard.json` - Importable Grafana dashboard
  ("Personal Expense Manager - Monitoring Dashboard").
- `monitoring/sample-metrics.txt` - Sample of the metrics / health data
  captured from a local run.

## Run it
```bash
docker compose up -d
# App:        http://localhost:8080
# Prometheus: http://localhost:9090  (Status > Targets shows app UP)
# Grafana:    http://localhost:3000  (admin / admin, import the JSON above)
```

In Prometheus, try: `up{job="expense-manager-app"}`
