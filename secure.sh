#! /bin/bash
#需要在/var/spool/cron/root文件中做定时任务(*/10 * * * * sh secure.sh)
lastb | awk '{print $3}'|sort|uniq -c|awk '{print $2}' >/root/iptb/tb.ip
sed -i '$d' /root/iptb/tb.ip
for i in `cat /root/iptb/tb.ip`
  do
  grep $i /etc/hosts.deny > /dev/null ##检索IP是否已存在于hosts.deny,存在则会输出
  if [ $? -gt 0 ];then ##$?上一条命令的执行结果，0有正常输出,其他异常表示不存在,则添加
   echo [$(date +"%Y-%m-%d %T")] $i>>/root/iptb/tb.log
   echo #$i>>/root/iptb/tb.log
   echo "sshd:$i:deny" >> /etc/hosts.deny ##增加屏蔽登录失败的IP
   fi
 done
