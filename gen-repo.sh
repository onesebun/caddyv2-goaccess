#!/bin/bash
cat access.log | docker run -v /etc/localtime:/etc/localtime:ro -p 7890:7890 --rm -i -e LANG=$LANG allinurl/goaccess -a -o html --log-format COMMON - > www/report.html
