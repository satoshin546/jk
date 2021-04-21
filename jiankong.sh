#!/bin/bash
ss=dstat -n 1 10 | grep -c "B"
if [$ss>3]
then
docker restart ssrmu
fi
