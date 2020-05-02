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

## Develop

- clone this repo
- `./develop.sh`
