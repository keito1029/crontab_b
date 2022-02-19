# backup      
      
```      
crontab -l > crontab_b/crontab_back.txt      
```      
      
# restore      
      
```      
sudo crontab -u root crontab_b/crontab_back.txt       
```      
      
# show each user crontab      
      
```      
sudo crontab -u  root -l       
```      
    
# how to use crontab      
  
> https://tecadmin.net/backup-crontabs-for-users-in-linux/    
  

