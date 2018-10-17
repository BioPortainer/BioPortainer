#!/bin/bash

#------------------------------------------------------------------------------
# Configure the service:
#------------------------------------------------------------------------------
CONFIG_FILE='/portus/config/config.yml'

# Set Rack and Rails environment:
export RACK_ENV=${RACK_ENV:-production}
export RAILS_ENV=${RAILS_ENV:-production}

# Machine fqdn:
: ${PORTUS_MACHINE_FQDN:-$(hostname)} && \
sed -i "s#portus.test.lan#${PORTUS_MACHINE_FQDN}#" ${CONFIG_FILE} 

# Populate the database:
env bundle exec rake db:migrate && env bundle exec rake db:seed

# Run:
env bundle exec crono &
export SSL_CERT_DIR=${SSL_CERT_DIR:-/certs} && c_rehash ${SSL_CERT_DIR}
exec env puma -e ${RACK_ENV} -b "ssl://${PUMA_IP:-0.0.0.0}:${PUMA_PORT:-443}?key=${SSL_CERT_DIR}/${SSL_KEY_NAME}&cert=${SSL_CERT_DIR}/${SSL_CRT_NAME}&verify_mode=none&ca=${SSL_CERT_DIR}/${ROOT_SSL_CRT_NAME}" -w ${PUMA_WORKERS:-3}
