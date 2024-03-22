#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
CREATE DATABASE keycloak;

CREATE DATABASE openfire;
GRANT ALL PRIVILEGES ON DATABASE openfire TO okstar;

CREATE DATABASE okstack_module_org;
GRANT ALL PRIVILEGES ON DATABASE okstack_module_org TO okstar;

CREATE DATABASE okstack_module_system;
GRANT ALL PRIVILEGES ON DATABASE okstack_module_system TO okstar;
EOSQL