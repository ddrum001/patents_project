#!/bin/bash

NAME="patently_innovative"
FLASKDIR=/home/ubuntu/patent_project/ui
SOCKFILE=/home/ubuntu/sock
USER=ubuntu
GROUP=ubuntu
NUM_WORKERS=3

echo "Starting $NAME"

export PYTHONPATH=$FLASKDIR:$PYTHONPATH

# Create the run directory if it doesn't exist
RUNDIR=$(dirname $SOCKFILE)
test -d $RUNDIR || mkdir -p $RUNDIR

# Start your unicorn
exec gunicorn run:app -b 127.0.0.1:8000 \
  --name $NAME \
  --workers $NUM_WORKERS \
  --user=$USER --group=$GROUP \
  --log-level=debug \
  --bind=unix:$SOCKFILE
