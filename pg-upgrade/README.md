# Upgrade PostgreSQL inside a cluster

**WARNING** Always take a backup!

## General procedure

1. Modifiy the values.yaml to your needs
2. Scale down the existing statefulset to zero
3. Deploy this helm chart (it's only a Kubernetes job)

    ```sh
    helm show values oci://ghcr.io/tibeer/pg-upgrade > pg-upgrade.yaml
    # modify the values
    helm install pg-upgrade oci://ghcr.io/tibeer/pg-upgrade --namespace <your_namespace> --values pg-upgrade.yaml
    kubectl logs -n <your_namespace> -f -l pg_upgrade=pg_upgrade_job
    ```

4. Do this for neighbour major versions. If you need to go e.g. from 12 to 15, do it three times! You can use `helm upgrade` or `helm uninstall ...; helm install ...`, but don't forget to update your values
