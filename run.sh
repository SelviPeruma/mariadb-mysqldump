#!/bin/sh
set -x
mysqldump -u ${MARIADB_USER} -p${MARIADB_PASSWORD} --all-databases -h${HOST} -P${PORT} | lz4 -c | ssh -p ${SSH_PORT} ${SSH_USER}@${SSH_HOST} " cat > ${TARGET_PATH}"
