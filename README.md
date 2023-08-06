# Helm Charts

This repository contains some helm charts.

| Chart | Description |
|-------|-------------|
| nginx-welcome | Helmchart that installs an nginx webserver including an ingress to the service. Used for testing external cluster access, especially for edge kubernetes installations. |
| scs-startpage | Chart that installs a preconfigured [homer](https://github.com/bastienwirtz/homer) dashboard for the [SCS project](https://github.com/SovereignCloudStack) |
| fastapi-cockroachdb-mock | Chart to deploy an example application containing a web app, database, ingress. Used for backup and migration tests. |
| uptime-kuma | Helmchart for running [uptime-kuma](https://github.com/louislam/uptime-kuma) in kubernetes |

## Usage

```sh
helm repo add tibeer https://tibeer.github.io/helm-charts/  # the trailing backslack is important
helm repo update tibeer
```

## Update this

```sh
helm package <your-chart-folder>
helm repo index --url https://tibeer.github.io/helm-charts/ .
```
