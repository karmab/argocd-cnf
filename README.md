Repo for testing argocd with some performance operators

We store the 4.6 OLM configs in 

```
argocd app create --project default --name cnf-config --repo https://github.com/karmab/argocd-cnf.git --path config --directory-recurse --dest-server https://kubernetes.default.svc --sync-policy automated
```

for 4.5, specify a different branch:

```
argocd app create --project default --name cnf-config --repo https://github.com/karmab/argocd-cnf.git --path config --directory-recurse --dest-server https://kubernetes.default.svc --sync-policy automated --revision 4.5
```


And the application specific to an environment, cnf12 for instance, with: 

```
argocd app create --project default --name cnf12 --repo https://github.com/karmab/argocd-cnf.git --path cnf12 --directory-recurse --dest-server https://kubernetes.default.svc --sync-policy automated
```
