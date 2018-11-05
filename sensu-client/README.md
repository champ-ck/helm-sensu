### Install Sensu Client
[Sensu Client Document ](https://docs.sensu.io/sensu-core/1.6/installation/install-sensu-client/)

```
kubectl apply -f sensu/sensu-client/client-daemonset.yaml
kubectl apply -f sensu/sensu-client/client-k8s.yaml
```





| File | Description |
| ------ | -----------|
|Client daemonset | Check [cpu](https://github.com/sensu-plugins/sensu-plugins-cpu-checks), [ram](https://github.com/sensu-plugins/sensu-plugins-memory-checks), [disk](https://github.com/sensu-plugins/sensu-plugins-disk-checks) per node.  |
|Client k8s | Check pods, node, etc [k8s plugins]()  |
|Rbac | Client Permission |


### About client config 
```json
{
  //point to redis
  "redis": {
  },
  "transport": {
  },
  //point to sensu api
  "api": {
  },
  //client config
  "client": {
  }
}

```
> Get redis password by exec to api pod and ( cat /etc/sensu/config.d/redis.json )