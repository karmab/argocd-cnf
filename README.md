Repo for testing argocd with some performance operators

We store the OLM configs in 

```
argocd app create --project default --name cnf-config --repo https://github.com/karmab/argocd-cnf.git --path config --dest-server https://kubernetes.default.svc --sync-policy automated
```

And the application specific with

```
argocd app create --project default --name cnf-env1 --repo https://github.com/karmab/argocd-cnf.git --path env1 --dest-server https://kubernetes.default.svc --sync-policy automated
```
