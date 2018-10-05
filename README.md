# Jenkins
A compose file to easily setup jenkins.

This started out as a docker compose file to make Jenkins easier to setup. As I tested this out on different environments, I added helper scripts.

## Clone

```console
git clone https://github.com/richmondsoftworks/jenkins.git
```

## Install Docker

```console
sudo bash install-docker.sh
```

## Install Docker Compose

```console
sudo bash install-docker-compose.sh
```

## Start Jenkins

```console
docker-compose up -d
```

## Get Admin Password

```console
bash get-admin-password.sh
```
