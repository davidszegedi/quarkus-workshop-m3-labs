#!/bin/bash

NAMESPACE="$1"
RATE="$2"
ROUTE="https://"$(oc get route -n ${NAMESPACE} -o jsonpath="{.items[].spec.host}{\"\n\"}")

#echo "The namespace ${NAMESPACE} contains route ${ROUTE}"
#echo $(curl -k ${ROUTE})

sh load.sh ${RATE} ${ROUTE}
