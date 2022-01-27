# Taiga (Project Management Tool) Self-Hosted

[Taiga](https://www.taiga.io) is an open source, self-hosted project management tool.

This repo is used to configure Taiga in the Cloud (DigitalOcean.com)

1. Connect to the remote droplet

```
> ssh root@IP_ADDRESS
```

2. Clone this repo

```
> git clone https://user:pass@github.com/kanzitelli/taiga-traefik.git backend
> cd backend
```

3. Create and fill up `.env` file

```
> nano .env
```

Example of `.env`:

```
# [SYSTEM]
DOMAIN_NAME=domain.com
DO_AUTH_TOKEN=XXXXXXXXXXXXXXXX

# [TAIGA]
TAIGA_SECRET_KEY=EbAtKj489gh97g29gvn94g9
TAIGA_SITES_DOMAIN=taiga.domain.com
TAIGA_SITES_SCHEME=https
TAIGA_SUBPATH=

# [POSTGRES]
DB_NAME=taiga
DB_USER=taiga_admin
DB_PASS=taigapAsdf21j20h20
DB_HOST=taiga-db

# [RABBITMQ]
RABBITMQ_USER=taiga_mq_user
RABBITMQ_PASS=TaiGAMQpsfopfp3
RABBITMQ_VHOST=taiga
RABBITMQ_ERLANG_COOKIE=KGj3v94uvbh08h249
```

4. Run `build` script

```
> bash scripts/build.sh
```

It will setup everything, including ACME (https certificates), PostgreSQL and will run docker.

5. Create super user

```
> bash scripts/manage.py createsuperuser
```

This is based on the original [Taiga docker repo](https://github.com/kaleidos-ventures/taiga-docker).
