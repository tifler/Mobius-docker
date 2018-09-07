#!/bin/sh

echo "Step 1/3 --"
echo "create database mobiusdb;" | mysql -u root --password=${MOBIUS_DB_PASS} --host=${MOBIUS_DB_HOST} --port=${MOBIUS_DB_PORT}
echo "Step 2/3 --"
cat ${MOBIUS_BASE}/mobius/mobiusdb.sql | mysql -u root --password=${MOBIUS_DB_PASS} --host=${MOBIUS_DB_HOST} --port=${MOBIUS_DB_PORT} --database=mobiusdb
echo "Step 3/3 --"
