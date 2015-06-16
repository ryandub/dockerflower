#! /bin/bash
echo "Starting Flower..."
echo "Using broker $BROKER ..."

exec /usr/bin/celery flower -b $BROKER
