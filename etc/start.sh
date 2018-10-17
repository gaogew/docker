#!/bin/bash
sudo /usr/sbin/sshd -D
/app/hadoop-3.1.1/bin/hdfs namenode -format
/app/hadoop-3.1.1/sbin/start-dfs.sh
