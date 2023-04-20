# Helm Charts

This repository contains some helm charts.

| Chart | Description |
|-------|-------------|
| default-helmchart | Helmchart that installs an nginx webserver including an ingress to the service. Used for testing external cluster access, especially for edge kubernetes installations. |
| scs-startpage | Chart that installs a preconfigured [homer](https://github.com/bastienwirtz/homer) dashboard for the [SCS project](https://github.com/SovereignCloudStack) |
| example-app | Chart to deploy an example application containing a web app, database, ingress. Used for backup and mgiration tests. |

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
