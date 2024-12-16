#!/bin/bash

read node_name
docker stop $node_name
docker rm $node_name
