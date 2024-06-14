mkdir -p ${HOME}/.docker/traefik/certs
touch ${HOME}/.docker/traefik/certs/acme.json
chmod 600 ${HOME}/.docker/traefik/certs/acme.json

mkdir -p ${HOME}/.docker/traefik/logs
chmod 755 ${HOME}/.docker/traefik/logs
