# scs-startpage

Startpage containing a collection of SCS resources.

## How to

```sh
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx 
helm install ingress-nginx ingress-nginx/ingress-nginx
helm install scs-home tibeer/scs-startpage --set ingress.host="1.2.3.4.nip.io"
```

## Manual docker deployment

If you want to deploy this without kubernetes, extract the config undearneath `homerConfig` in the *values.yaml* file and put them into a *config.yml* file.
Then go ahead and start the container.

```yaml
docker run -d -p 80:8080 -v "$(pwd)/config.yml:/www/assets/config.yml:ro" --name scs-home b4bz/homer:latest
```
