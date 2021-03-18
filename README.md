# DOCKER-OPENSTACKCLI

An Openstack CLI tool in Docker container in order to be used into your CI/CD pipelines or Kubernetes clusters.

## Registry

Docker Images are currently stored [here](https://hub.docker.com/repository/docker/mendrugory/openstackcli).

## Building Image

```bash
$ docker build -t <image name> .
```

## Examples

### Listing Servers

```bash
$ docker run --rm \
-e OS_AUTH_URL=<auth url> \
-e OS_IDENTITY_API_VERSION=<api version> \
-e OS_USER_DOMAIN_NAME=<user domain name> \
-e OS_PROJECT_DOMAIN_NAME=<project domain name> \
-e OS_TENANT_ID=<tenant id> \
-e OS_TENANT_NAME=<tenant name> \
-e OS_USERNAME=<user name> \
-e OS_PASSWORD=<user password> \
-e OS_REGION_NAME=<region> \
mendrugory/openstackcli \
openstack server list
```

### Show Server

```bash
$ docker run --rm \
-e OS_AUTH_URL=<auth url> \
-e OS_IDENTITY_API_VERSION=<api version> \
-e OS_USER_DOMAIN_NAME=<user domain name> \
-e OS_PROJECT_DOMAIN_NAME=<project domain name> \
-e OS_TENANT_ID=<tenant id> \
-e OS_TENANT_NAME=<tenant name> \
-e OS_USERNAME=<user name> \
-e OS_PASSWORD=<user password> \
-e OS_REGION_NAME=<region> \
mendrugory/openstackcli \
openstack server show <server name or id>
```

### Listing Volumes

```bash
$ docker run --rm \
-e OS_AUTH_URL=<auth url> \
-e OS_IDENTITY_API_VERSION=<api version> \
-e OS_USER_DOMAIN_NAME=<user domain name> \
-e OS_PROJECT_DOMAIN_NAME=<project domain name> \
-e OS_TENANT_ID=<tenant id> \
-e OS_TENANT_NAME=<tenant name> \
-e OS_USERNAME=<user name> \
-e OS_PASSWORD=<user password> \
-e OS_REGION_NAME=<region> \
mendrugory/openstackcli \
openstack volume list
```


### Create Volume Snapshot

```bash
$ docker run --rm \
-e OS_AUTH_URL=<auth url> \
-e OS_IDENTITY_API_VERSION=<api version> \
-e OS_USER_DOMAIN_NAME=<user domain name> \
-e OS_PROJECT_DOMAIN_NAME=<project domain name> \
-e OS_TENANT_ID=<tenant id> \
-e OS_TENANT_NAME=<tenant name> \
-e OS_USERNAME=<user name> \
-e OS_PASSWORD=<user password> \
-e OS_REGION_NAME=<region> \
mendrugory/openstackcli \
openstack volume snapshot create --force <snapshot name> 
```


### Delete Volume Snapshot

```bash
$ docker run --rm \
-e OS_AUTH_URL=<auth url> \
-e OS_IDENTITY_API_VERSION=<api version> \
-e OS_USER_DOMAIN_NAME=<user domain name> \
-e OS_PROJECT_DOMAIN_NAME=<project domain name> \
-e OS_TENANT_ID=<tenant id> \
-e OS_TENANT_NAME=<tenant name> \
-e OS_USERNAME=<user name> \
-e OS_PASSWORD=<user password> \
-e OS_REGION_NAME=<region> \
mendrugory/openstackcli \
openstack volume snapshot delete <snapshot name or id> 
```