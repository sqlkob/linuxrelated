#!/usr/bin/bash
whoami 

ps -f

echo "############################ BEGIN SCP #################################" 

script -q -c "scp -P 19222 -i '/home/mattk/.ssh/id_mine_rsa' mkob@kobmine.garbagefile.net:/home/mkob/minecraftbe/backupAll/\*.gz /home/mattk/Backups/minecraft/" 

echo "############################ END SCP #################################" 

echo "############################ BEGIN local tar  #################################" 

script -c "tar -zcvf '/home/mattk/backupstorage/$(date '+%Y-%m-%d_%H:%M:%S').ALL.backups.tar.gz' --absolute-names /home/mattk/Backups/minecraft/" 

echo "############################ END local tar  #################################" 

echo "############################ BEGIN local clean-up  #################################" 

script -c "rm /home/mattk/Backups/minecraft/*.gz" 

echo "############################ END local clean-up  #################################" 


