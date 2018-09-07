#!/bin/sh

echo "Step 1 --"
echo "create database mobiusdb;" | mysql -u root --password=${MOBIUS_DB_PASS} --host=${MOBIUS_DB_HOST}
echo "Step 2 --"
cat ${MOBIUS_BASE}/mobius/mobiusdb.sql | mysql -u root --password=${MOBIUS_DB_PASS} --host=${MOBIUS_DB_HOST} --database=mobiusdb
echo "Step 3 --"
