#!/bin/bash

set -o pipefail
set -e

while read -r line || [ "$line" != "" ]; do
  plugins="${plugins} ${line}"
done
java -jar $(find / -name jenkins-cli.jar) -s http://localhost:8080 -auth admin:$1 install-plugin $plugins -restart
