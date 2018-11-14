You need to know about Sensu. 
I recomment to read Sensu [Document](https://docs.sensu.io/).


### Helm value

[values file](./values.yaml)

### Install Sensu Server, Api, Uchiwa

```bash
helm dependency update helm/sensu

helm install --namespace sensu --name sensu helm/sensu/ --values=helm/sensu/values.yaml  --debug

helm upgrade sensu helm/sensu/ --values=helm/sensu/values.yaml
```
Expose Uchiwa service/pod (Or bind Uchiwa with LoadBalancer/Ingress)


```
kubectl --namespace sensu port-forward $POD_NAME 3000:3000
kubectl --namespace default port-forward service/$UCHIWA 3000:3000
```

### Helm templates

| File | Description |
| ------| -----------|
|Deployment | Server, Api, Uchiwa []() |
|Check | [Sensu Check](https://docs.sensu.io/sensu-core/1.6/reference/checks/#check-token-substitution) |
|Slack |[Slack Plugins](https://github.com/sensu-plugins/sensu-plugins-slack) |
|Handler | [Sensu Handler](https://docs.sensu.io/sensu-core/1.6/reference/handlers/#keepalive) |
|Uchiwa Config | [Configuration file](https://docs.sensu.io/uchiwa/1.0/getting-started/configuration/#configuration-load-order) |


### Debugging
```
kubectl logs $POD server --namespace=sensu
kubectl logs $POD api --namespace=sensu
kubectl logs $POD uchiwa --namespace=sensu
```