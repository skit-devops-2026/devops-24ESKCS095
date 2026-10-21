# Personal Expense Manager

A personal expense manager web application for tracking day-to-day spending.

## Author

| Roll No. | Name | GitHub Username |
|---|---|---|
| 24ESKCS095 | CHANDRA MOHAN | chandramohamm069-debug |

## About

Personal Expense Manager is a web application designed to help users record and manage their daily expenses.

## Features

- Add and manage expenses
- Track daily spending
- View expense information
- User login and signup pages
- Help and privacy information
- Responsive web interface

## Tech Stack

- HTML
- CSS
- JavaScript

## Project Structure

```text
.
├── images/
├── about.html
├── add-expense.html
├── contact.html
├── expense.js
├── features.html
├── help.html
├── index.html
├── login.html
├── main.css
├── privacy.html
├── script.js
├── signup.html
├── stories.html
└── terms.html
```

## Development

This project is maintained using Git and GitHub for version control and collaborative development.
CI pipeline verification – run 5

## Mid-term 2 - Containerization, Deployment, Monitoring & Kubernetes

### Live Deployment
Live URL: https://skit-devops-2026.github.io/devops-24ESKCS095/

Deployed automatically to GitHub Pages by `.github/workflows/deploy-pages.yml`.
Deployment details and screenshot: `docs/deployment.md`,
`docs/deployment-screenshot.png`

### M5 - Containerization (Docker)
- Dockerfile present in the repo root (`Dockerfile`, nginx:alpine, port 80)
- docker-compose file present in the repo root (`docker-compose.yml` -
  app + Prometheus + Grafana)

```bash
docker build -t ghcr.io/skit-devops-2026/devops-24eskcs095:latest .
docker compose up -d
# App http://localhost:8080
```

- Image pushed to the container registry (GitHub Container Registry):
  `ghcr.io/skit-devops-2026/devops-24eskcs095:latest`
  Pushed automatically by `.github/workflows/docker.yml` on every push
  to `main` (Repo > Packages shows the published package). To push manually:
  `docker push ghcr.io/skit-devops-2026/devops-24eskcs095:latest`

### M6 - Deployment and Monitoring
- Live URL responding: https://skit-devops-2026.github.io/devops-24ESKCS095/
- Prometheus config present: `prometheus.yml` and `monitoring/prometheus.yml`
- Monitoring dashboard/data committed under `monitoring/`:
  `monitoring/grafana-dashboard.json`, `monitoring/sample-metrics.txt`,
  `monitoring/README.md`
- Deployment screenshot committed under `docs/`:
  `docs/deployment-screenshot.png`

### M7 - Kubernetes
- Kubernetes deployment manifest present: `k8s/deployment.yaml`
  (kind: Deployment, 2 replicas, containerPort 80)
- Kubernetes service manifest present: `k8s/service.yaml`
  (kind: Service, NodePort 30080)

```bash
kubectl apply -k k8s/
```
