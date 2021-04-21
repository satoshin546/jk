#!/bin/bash
ss=dstat -n 1 10 | grep -c "B"
if [$ss>5]
then
docker restart ssrmu
fi
