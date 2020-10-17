#!/bin/bash

set -x

java -jar schemaspy-6.0.0.jar \
-t pgsql \
-db ${DB_NAME:-testdb} \
-host ${DB_HOST:-localhost}:${DB_PORT:-5432} \
-u ${DB_USER_NAME:-postgres} \
-p ${DB_PASSWORD:-postgres} \
-all \
-o ./schemaspy \
-dp postgresql-42.2.5.jar \
-gv ./graphviz-2.38 \
-noads

cd schemaspy
python -m SimpleHTTPServer 5060