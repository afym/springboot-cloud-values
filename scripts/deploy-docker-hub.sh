#!/bin/bash
docker build -t angelfym/cloud-values:latest .
docker tag angelfym/cloud-values:latest angelfym/cloud-values:upload