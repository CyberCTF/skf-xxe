#!/bin/sh
# XML posted to /home is parsed and its items element echoed.
set -e
H=http://web:5000
curl -fsS --data-urlencode "xxe=<items>probe$$</items>" "$H/home" | grep -q "probe$$"
