# Helm Charts

This repository contains some helm charts.

| Chart | Description |
|-------|-------------|
| default-helmchart | Helmchart that installs an nginx webserver including an ingress to the service. Used for testing external cluster access, especially for edge kubernetes installations. |

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
