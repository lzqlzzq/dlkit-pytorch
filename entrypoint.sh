#!/bin/bash

jupyter lab --ip=0.0.0.0 --port=8888 --allow-root --no-browser &

tensorboard --logdir /workspace/tf-logs --bind_all &

wait -n

exit $?
