#!/usr/bin/env bash

if aws eks list-clusters | grep -q "helloworld-cluster"
then
  echo "cluster existed!"
else
  eksctl create cluster --config-file=cluster.yml
fi