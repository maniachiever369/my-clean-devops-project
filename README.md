# Clean DevOps Project

An automated, containerized Python web application stack featuring integrated security scanning and monitoring pipelines.

## Project Architecture
- **Application**: Built-in Python `http.server` running on port 5000.
- **Reverse Proxy**: Nginx routing external traffic (port 80) to the container.
- **Monitoring**: Prometheus scraping performance data via cAdvisor.
- **Visualization**: Grafana enterprise engine tracking real-time system metrics.

## Local Deployment
To launch the complete infrastructure stack locally, execute:
```bash
docker compose up -d --build
```

## CI/CD Pipeline Capabilities
Every commit pushed to the `main` branch automatically triggers a GitHub Actions workflow that:
- Lints the `Dockerfile` configurations via **Hadolint**.
- Builds the application runtime target image cleanly.
- Scans for vulnerabilities using **Trivy** to block insecure releases.

