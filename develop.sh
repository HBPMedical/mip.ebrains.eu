#! /bin/env bash

# docker-compose reads from env
cp .env.dev .env
cp .env ./frontend/.env
source .env

stop() {
    echo -e "\nRemoving previous services...\n"
    docker-compose -f docker-compose-dev.yml --project-name dev-mip-ebrains-eu down

    docker_compose_down=$?
    if [[ ${docker_compose_down} -ne 0 ]]; then
        echo -e "\nAn error has occurred while removing services and networks.Exiting.." >&2
        exit 1
    fi
}

main() {
    case $1 in
    stop)
        stop
        ;;
    *)
        stop

        echo -e "\nRunning Development Environnement\n"
        docker-compose -f docker-compose-dev.yml --project-name dev-mip-ebrains-eu up

        docker_compose_up=$?
        if [[ ${docker_compose_up} -ne 0 ]]; then
            echo -e "\nAn error has occurred while deploying services.Exiting.." >&2
            exit 1
        fi
        ;;
    esac
}

main $@
