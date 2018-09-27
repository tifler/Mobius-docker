#!/bin/sh

# start mosquitto broker
service mosquitto start

node ${MOBIUS_BASE}/mobius.js
