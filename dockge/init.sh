mkdir -p ${HOME}/.docker/dockge/data
touch ${HOME}/.docker/dockge/data/db-config.json
sudo chown -R $(id -u):$(id -g) ${HOME}/.docker
sudo chown -R $(id -u):$(id -g) ${HOME}/.docker/dockge/data
