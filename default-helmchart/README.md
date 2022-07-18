# default-helmchart

Used for testing external cluster access.

## How to

```sh
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx 
helm install ingress-nginx ingress-nginx/ingress-nginx
helm install foo tibeer/default-helmchart --set ingress.host="test.tibeer.de" 
```

You should now be able to access your website via the given host URL and should see the default nginx website:

**Welcome to nginx!**

If you see this page, the nginx web server is successfully installed and  
working. Further configuration is required.

For online documentation and support please refer to [nginx.org](nginx.org).  
Commercial support is available at [nginx.com](nginx.com).

*Thank you for using nginx*.
