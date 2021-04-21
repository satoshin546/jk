#!/bin/bash
ss=`dstat -n 1 10 | grep -c "B"`
if [ $ss>5 ];then
echo "有$ss次B字符，准备重启..."
docker restart ssrmu
echo "重启成功！"
fi
