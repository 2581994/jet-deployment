## Usage

### Prerequisites
- Helm v3 [installed](https://helm.sh/docs/using_helm/#installing-helm)
- install `traefik`

```bash
helm repo add traefik https://helm.traefik.io/traefik
helm repo update
helm install traefik traefik/traefik
````

### Prepare config file
```bash
touch values.local.yaml
```

1. set imageCredentials for image pulling
```yaml
# values.local.yaml
imageCredentials:
  registry: registry.cn-hangzhou.aliyuncs.com
  username: deploy-man@skylark
  password: changeit
```

2. set image info for image pulling
```yaml
# values.local.yaml

airbase:
  image:
    repository: jet/airbase_umbrella
    tag: "release"
    pullPolicy: IfNotPresent
```

3. set host for jet and minio
```yaml
# values.local.yaml

# [Jet]
jetHost: supervision.jet.localhost

# [Minio]
minioHost: supervision.jet.localhost
```

4. set IPs for external services
```yaml
# values.local.yaml

# Set IPs properly

# [PostgreSQL]
postgresqlIP: 10.0.0.18

# [Minio]
minioServiceIP: 10.0.0.18
```

## Commands
```bash
# set `RELEASE` in `.env` file

# .env
RELEASE=workflow

# install
make install
```

OR

```bash
# install with name of `workflow`
make install RELEASE=workflow
```

## HowTo

### Setup TLS
```yaml
# values.local.yaml

# [Jet]
jetTLSSecret:
  certificate: base64 encoded certificate-file
  key: base64 encoded key-file

# [Minio]
minioTLSSecret:
  certificate: base64 encoded certificate-file
  key: base64 encoded key-file
minioScheme: https://
minioPort: 443
```

### Subpath support
```yaml
# values.local.yaml

# [Jet]
jetSubpath: /jet
```
