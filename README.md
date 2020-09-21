Repo for testing argocd with some performance operators

We store the OLM configs in 

```
argocd app create --project default --name cnf-config --repo https://github.com/karmab/argocd-cnf.git --path config --dest-server https://kubernetes.default.svc --sync-policy automated
```
