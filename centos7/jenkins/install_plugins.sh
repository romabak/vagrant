#!/bin/bash

set -o pipefail
set -e

wget http://localhost:8080/jnlpJars/jenkins-cli.jar


while read -r line || [ "$line" != "" ]; do
  plugins="${plugins} ${line}"
done
java -jar jenkins-cli.jar -s http://localhost:8080 -auth admin:$1 install-plugin $plugins -restart
