#!/bin/sh
set -ex
test -d ./data || (mkdir ./data; chmod 700 ./data)
exec docker run -d -p 5000:5000 -v "`pwd`/data/registry:/var/lib/registry:Z" --restart=always --name registry registry:2