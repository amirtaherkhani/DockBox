mkdir -p ${HOME}/.docker/mailserver/data/dms/mail-data/
mkdir -p ${HOME}/.docker/mailserver/data/dms/mail-state/
mkdir -p ${HOME}/.docker/mailserver/data/dms/mail-logs/
mkdir -p ${HOME}/.docker/mailserver/data/dms/config/
mkdir -p ${HOME}/.docker/mailserver/data/letsencrypt

chmod 755 ${HOME}/.docker/mailserver/
chmod 755 ${HOME}/.docker/mailserver/*
