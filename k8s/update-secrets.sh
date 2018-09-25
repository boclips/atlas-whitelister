#!/usr/bin/env bash

namespaces="testing staging production"

for ns in $namespaces
do
    kubectl delete secret atlas-whitelister -n=$ns
    kubectl create secret generic atlas-whitelister --from-env-file <(lpass show --notes "atlas-whitelister-$ns-env") -n=$ns
done
