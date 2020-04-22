#!/bin/bash

echo "############################ BEGIN #################################" >> backup.lg
date >> backup.lg
#script -q -c "scp -P 19222 mkob@kobmine.garbagefile.net:/home/mkob/minecraftbe/kobmine/backups/*.gz /home/mattk/backups/kobmine/" >> backup.lg
#script -q -c "scp -P 19222 mkob@kobmine.garbagefile.net:/home/mkob/minecraftbe/kobcreate/backups/*.gz /home/mattk/backups/kobcreate/" >> backup.lg

script -q -c "scp -P 19222 mkob@kobmine.garbagefile.net:/home/mkob/minecraftbe/backupAll/*.gz /home/mattk/backups/" >>
backup.lg


date >> backup.lg
echo "############################ END #################################" >> backup.lg

#sed -i -e 's/\r/\n/g' backup.lg

#tar -zcvf "/home/mattk/backupstorage/$(date '+%Y-%m-%d').kobmine.backups.tar.gz" ./backups/kobmine
#tar -zcvf "/home/mattk/backupstorage/$(date '+%Y-%m-%d').kobcreate.backups.tar.gz" ./backups/kobcreate

tar -zcvf "/home/mattk/backupstorage/$(date '+%Y-%m-%d').ALL.backups.tar.gz" ./backups/

# rm /home/mattk/backups/kobmine/*.gz
# rm /home/mattk/backups/kobcreate/*.gz