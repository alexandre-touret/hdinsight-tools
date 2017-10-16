#!/bin/sh

PREFIX=$1
USERNAME=$2
azure hdinsight cluster delete -g $PREFIXgroup $PREFIXcluster
azure storage account delete -g $PREFIXgroup $PREFIXstorage
azure group delete $PREFIXgroup 
azure logout $USERNAME
