1. centos putty 等待输入密码 时间长
解决方法：vim /etc/ssh/sshd_config 
将#UseDNS yes 改成UseDNS no
然后/etc/init.d/sshd restart
