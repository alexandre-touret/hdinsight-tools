#!/bin/sh
PREFIX= $1
KEY=$2 

azure hdinsight cluster create -g $PREFIXgroup -l westeurope -y Linux --clusterType Hadoop --defaultStorageAccountName $PREFIXstorage.blob.core.windows.net --defaultStorageAccountKey $KEY --defaultStorageContainer $PREFIXcluster --workerNodeCount 3 --userName admin --password passworD1 --sshUserName sshuser --sshPassword   passworD1 $PREFIXcluster

