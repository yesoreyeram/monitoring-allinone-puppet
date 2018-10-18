#!/bin/bash

echo "foo.bar 111222333444 `date +%s`" | nc localhost 2003
curl "http://localhost:8888/render?format=json&target=foo.bar&from=-3minutes" | grep 111222333444.0
echo $?
exit 0;
