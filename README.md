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

You need [docker and docker-compose](https://www.docker.com/) in order to run this stack.

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

You need [Node.js](https://nodejs.org/en/) and [yarn](https://yarnpkg.com/) in order to run this stack.

- clone this repo
- `./develop.sh` will launch the Strapi CMS and Postgres
- in another terminal, `cd frontend`
- `yarn serve` will launch the frontend
- You will need to `yarn install` at first launch.
