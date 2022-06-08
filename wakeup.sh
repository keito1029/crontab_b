#!/bin/bash
for i in `seq 0 20 60`; \
do (sleep ${i}m; \
	( \
		amixer set Master mute;amixer set Headphone mute; \
		amixer set Speaker mute;amixer set Master 95\%; \
		amixer set Speaker 95\% \
	) \
	> /dev/null ; \
	( \
		pkill -f 'https://soundcloud.com/k-y-692291413/' & \
		pkill wifiaudio \
	) \
	> /dev/null; \ 
	sleep 3 & \
	( \
		/home/keito/Downloads/wifiaudio_linux & \
		mpv --shuffle=yes --volume=15 --loop-playlist=yes --player-operation-mode=pseudo-gui \
		'https://soundcloud.com/k-y-692291413/sets/edm/s-PhOXerHs9rk?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing' \ 
	) \ 
	> /dev/null & \ 
	( \
		sleep 60 ; rfkill block bluetooth & \  
		amixer set Master unmute & amixer set Headphone unmute & \
		amixer set Speaker unmute \
	) \
	> /dev/null & \ 
	date >> /home/keito/cron_confirm.log) & \ 
done
