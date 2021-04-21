#!/bin/bash
ss=`dstat -n 1 10 | grep -c "B"`
if [ $ss>5 ];then
docker restart ssrmu
echo "重启成功！"
fi
