#!/bin/bash

while read -r line || [ "$line" != "" ]; do
  plugins="${plugins} ${line}"
done
java -jar $JENKINS_CLI -s http://localhost:8080 install-plugin $plugins -restart
