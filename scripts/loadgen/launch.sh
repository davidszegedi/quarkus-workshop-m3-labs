#!/bin/bash

NAMESPACE="$1"
ROUTE=$(oc get route -n ${NAMESPACE} -o jsonpath="{.items[].spec.host}{\"\n\"}")

#echo "This is namespace ${NAMESPACE} for app ${APP}"

