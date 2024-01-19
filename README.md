# Helm Charts

This repository contains some helm charts.
If you see this README from the package view, you will only see one helm-chart at a time.

| Chart | Description |
|-------|-------------|
| nginx-welcome | Helmchart that installs an nginx webserver including an ingress to the service. Used for testing external cluster access, especially for edge kubernetes installations. |
| homer-startpage | Chart that installs a preconfigured [homer](https://github.com/bastienwirtz/homer) dashboard according to your needs |
| fastapi-cockroachdb-mock | Chart to deploy an example application containing a web app, database, ingress. Used for backup and migration tests. |
| uptime-kuma | Helmchart for running [uptime-kuma](https://github.com/louislam/uptime-kuma) in kubernetes |

## Usage

`helm repo add` and `helm repo update` is no longer required, as you can install directly from the (new) oci url:

```sh
helm install homer oci://ghcr.io/tibeer/homer-startpage --wait
```

If you want to change the values, fetch and alter them first, than use them:

```sh
helm show values oci://ghcr.io/tibeer/homer-startpage > values.yaml
helm install homer oci://ghcr.io/tibeer/homer-startpage --values values.yaml --wait
```
