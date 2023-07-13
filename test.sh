#!/bin/bash
sleep 120
GSR_ENDPOINT=$(curl http://localhost:8080/geoserver/gsr/services/?f=json)
GSR_EXPECTED={"currentVersion":10.51,"folders":[],"services":[{"name":"Geometry","type":"GeometryServer"}]}
echo "Got $GSR_ENDPOINT"
echo "Expected $GSR_EXPECTED"
if [ $GSR_ENDPOINT == $GSR_EXPECTED ]; then
    echo "Success"
    return 0
else
    return 1
    echo "Failed"
fi
