#!/bin/sh

echo -e "\nRunning CAS..."
exec java -Xms512m -Xmx2048M -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -jar docker/cas/war/cas.war
