#!/bin/bash

cd $(dirname $0)/..

DEPLOY_NODE_WEB="node.hostname != notuse" \
DEPLOY_NODE_REDIS="node.hostname != notuse" \
DEPLOY_NODE_DB="node.hostname != notuse" \

DEPLOY_NODE_WEB="node.hostname==w.<secret:HOST_NAME>" \
DEPLOY_NODE_REDIS="node.hostname==w.<secret:HOST_NAME>" \
DEPLOY_NODE_DB="node.hostname==p.<secret:HOST_NAME>" \
docker stack deploy -c docker-compose.yml registry
