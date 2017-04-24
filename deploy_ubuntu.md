## X11 auth issue
add the following line to '/etc/ssh/sshd_config'
```
ForwardX11Trusted yes
```
