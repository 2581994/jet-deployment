### 0.3.0
- update `minio` to 2022 release
- remove `scixir` from dependencies

### 0.2.2
- remove aircrew from the chart

### 0.2.1
- fix https redirection
- `airbase(aircrew).image.imagePullSecret` and `airbase(aircrew).image.registry` in `image` move to top level `imageCredentials`
- `jetTLSSecret` and `minioTLSSecret` have been changed to crt/key map

### 0.2.0
- `traefik` has been removed from this repo, refer to readme for installation
- `airbaseServerName` and `aircrewHost` have been merged into `jetHost`
- Refer to `Setup TLS` in `HowTo` to setup tls
