Repo for testing argocd with some performance operators

We store the OLM configs in 

```
argocd app create --project default --name cnf-config --repo https://github.com/karmab/argocd-cnf.git --path config --directory-recurse --dest-server https://kubernetes.default.svc --sync-policy automated
```

And the application specific to an environment env1 with: 

```
argocd app create --project default --name cnf-env1 --repo https://github.com/karmab/argocd-cnf.git --path env1 --directory-recurse --dest-server https://kubernetes.default.svc --sync-policy automated
```
