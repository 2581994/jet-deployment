# Jet External Services (k3s version)

```shell
# jet-deployment/external-services/lima
limactl start ./jet-external-services.yaml

# login vm
limactl shell jet-services
cd ~/jet-deployment/external-services/chart
touch values.local.yaml
# edit values.local.yaml
make install
```

### Services port:

| name     | port  |
|----------|-------|
| Postgres | 30001 |
| MinIO    | 30002 |
