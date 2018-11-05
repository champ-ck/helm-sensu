## Install plugins
Gemfile
```ruby
gem 'sensu-plugins-disk-checks'
gem 'sensu-plugins-cpu-checks'
```
### Build 

```
docker build -t sensu .
docker push sensu
```

### Referent
https://github.com/sstarcher/docker-sensu