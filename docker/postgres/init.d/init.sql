#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE DATABASE IF NOT EXISTS `keycloak`;
CREATE DATABASE IF NOT EXISTS `openfire`;
CREATE DATABASE IF NOT EXISTS `okstack_module_org`;
CREATE DATABASE IF NOT EXISTS `okstack_module_system`;
EOSQL