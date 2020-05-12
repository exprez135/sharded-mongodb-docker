#!/bin/sh

echo "Welcome to the MongoDB Sharded-Replicated-Swarmed Configurator!"

echo "How many "mongos" processes do you want?"

read mongos_number

echo "How many "configdb" replicas do you want? (minimum 2)?"

read configdb_number

echo "How many "shard" processes do you want?"

read shard_number

echo "How many replicas do you want of each "shard"?"

read shard_replica_number

echo "$mongos_number $configdb_number $shard_number $shard_replica_number"

for i in {0..$mongos_number}
do
echo "\


echo "Done!"
