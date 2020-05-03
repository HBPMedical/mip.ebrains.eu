#! /bin/env bash

# docker-compose reads from env
cp .env.prod .env
cp .env ./frontend/.env
source .env

stop() {
    echo -e "\nRemoving previous services...\n"
    docker-compose -f docker-compose.yml --project-name mip-ebrains-eu down

    docker_compose_down=$?
    if [[ ${docker_compose_down} -ne 0 ]]; then
        echo -e "\nAn error has occurred while removing services and networks.Exiting.." >&2
        exit 1
    fi
}

build_frontend() {
    cd frontend
    docker build -t hbpmip/mip-ebrains-eu:latest .
    cd ..
}

main() {
    case $1 in
    stop)
        stop
        ;;
    *)
        stop
        build_frontend

        echo -e "\nRunning Production Environnement\n"
        docker-compose -f docker-compose.yml --project-name mip-ebrains-eu up -d

        docker_compose_up=$?
        if [[ ${docker_compose_up} -ne 0 ]]; then
            echo -e "\nAn error has occurred while deploying services.Exiting.." >&2
            exit 1
        fi
        ;;
    esac
}

main $@
