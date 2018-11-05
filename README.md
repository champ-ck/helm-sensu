# Helm Sensu

This repository I want to share how to setup sensu on k8s with helm.

### Use case
+ check nodes cpu, ram, disk.
+ http request.
+ check k8s pod, nodes, etc.
+ push notification to slack channel.

### Get started
+ [build docker image](./docker/README.md)
+ [helm install](./helm/sensu/README.md)
+ [client install](./sensu-client/README.md)

### Special thanks
https://github.com/jaxxstorm/sensu-on-kubernetes

### Articles

<a href="https://blog.powerupcloud.com/step-by-step-install-and-configure-sensu-grafana-9cedca333396" target="_blank">Step By Step: Install and Configure Sensu + Grafana</a><br />
<br />
<a href="https://dmsimard.com/2016/03/21/tips-on-controlling-the-flow-of-notifications-in-sensu/" target="_blank">TIPS ON CONTROLLING THE FLOW OF NOTIFICATIONS IN SENSU</a><br />
<br />
<a href="https://opensource.com/article/18/8/getting-started-sensu-monitoring-solution" target="_blank">Getting started with Sensu monitoring</a><br />
<br />
<a href="https://blog.sensuapp.org/our-journey-implementing-sensu-to-monitor-kubernetes-in-production-5764aff2dd50" target="_blank">Our journey implementing Sensu to monitor Kubernetes in production</a><br />
<br />
<a href="https://www.digitalocean.com/community/tutorials/how-to-configure-sensu-monitoring-rabbitmq-and-redis-on-ubuntu-14-04" target="_blank">17 How To Configure Sensu Monitoring, RabbitMQ, and Redis on Ubuntu 14.04</a><br />
<br />
<a href="https://dmsimard.com/2016/03/21/tips-on-controlling-the-flow-of-notifications-in-sensu/" target="_blank">TIPS ON CONTROLLING THE FLOW OF NOTIFICATIONS IN SENSU</a>