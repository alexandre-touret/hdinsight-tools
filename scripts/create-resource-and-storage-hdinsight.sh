#!/bin/sh

PREFIX=$1

azure config mode arm
azure group create $PREFIXgroup westeurope
azure storage account create -g $PREFIXgroup --sku-name RAGRS -l westeurope --kind Storage $PREFIXstorage
azure storage account keys list -g $PREFIXgroup $PREFIXstorage --json
