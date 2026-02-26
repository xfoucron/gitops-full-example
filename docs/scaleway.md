# Scaleway

Install [Scaleway CLI](https://github.com/scaleway/scaleway-cli) and login.

## Get kubeconfig

Fetch `kubeconfig.yaml` with the Scaleway CLI (if you don't have any other K8S clusters) :

```shell
scw k8s kubeconfig get $(scw k8s cluster list -o json | jq -r '.[].id') > kubeconfig.yaml
```
