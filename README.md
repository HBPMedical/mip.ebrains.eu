# Medical Informatics Platform

## mip.ebrains.eu

This is the code repository for the [mip.ebrains.eu
](https://mip.ebrains.eu) website.

The website is based on

- [Vue.js](https://vuejs.org/) for the frontend
- [Strapi](https://strapi.io/) for the CMS
- [PostgresSQL](https://www.postgresql.org/) for the database
- [Apollo](https://www.apollographql.com/) for the GraphQL API

## Installation

You need [docker and docker-compose](https://www.docker.com/) in order to run this stack, and that's it.

## Deploy

- clone this repository.
- create a `.env.prod` file based on `.env.dev` variables
- `./deploy.sh`

### Troubleshooting

DNS queries inside docker fail with Error: getaddrinfo EAI_AGAIN
Simple fix is to create the file `/etc/docker/daemon.json`
and insert:

```json
{
  "dns": ["10.0.0.2", "8.8.8.8"]
}
```

- [Source on github](https://github.com/moby/moby/issues/32106)

## Develop

- clone this repo
- `./develop.sh`
