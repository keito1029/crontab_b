----

# Please Commit. you are wellcome.

## reference of how to use crontab      

---

----

# What's crontab

crontab can run linux commands at a specified time. crontab is default install. No setup required.

---

--

# How to use crontab

---

## edit crontab

Type the following command in the CLI. Maybey You can choose editor at first startup. Vim is recommended for editing.
* advice
	If you are not familiar with 'chmod', you should not do these operations after doing 'sudo su'

```
$ crontab -e
```

## Setting a path

Type in the path of the application or device driver you want to use.

```
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
XDG_RUNTIME_DIR=/run/user/1000
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
DISPLAY=:0
```

## Setting a time

Replace asterisk minutes,hour(0-23),day,month,week(0-6),command.

```
# minutes hour day mon dow   command
#* * * * * command
```

### For Example(Setting a time) 

```
# git push every other minute. reference of https://github.com/robo-projectC/git_shell
#* * * * * command
00 */1 * * * sh ~/git_shell/export_push.sh "your push or pull directory" ; date >> git_pullpush.log

# you need make git_pullpush.log on vim
# when you want to check log
00 */1 * * * sh ~/git_shell/export_push.sh "your push or pull directory" ; date >> git_pullpush.log

# Developmental Examples
# when you want to make wakeup timer
*/6 6-8 * * 0-6 (amixer set Master mute;amixer set Headphone mute;amixer set Speaker mute; amixer set Master 95\%) > /dev/null ; (pkill -f 'https://soundcloud.com/k-y-692291413/likes' & pkill wifiaudio) > /dev/null; sleep 3 & (~/Downloads/wifiaudio_linux & mpv --volume=60 --loop-playlist=yes --shuffle --player-operation-mode=pseudo-gui https://soundcloud.com/k-y-692291413/likes) > /dev/null & (sleep 60 ; rfkill block bluetooth & amixer set Master unmute & amixer set Headphone unmute & amixer set Speaker unmute) > /dev/null;


```


---

# About backup

---

## backup      

you need mkdir crontab_b.
      
```      
crontab -l > crontab_b/crontab_back.txt      
```      
      
## restore      
      
```      
sudo crontab -u root crontab_b/crontab_back.txt       
```      
      
## show each user crontab      
      
```      
sudo crontab -u  root -l       
```      
    
## reference of how to backup crontab      
  
> https://tecadmin.net/backup-crontabs-for-users-in-linux/    
  

