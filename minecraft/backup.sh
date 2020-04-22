#!/bin/bash

echo "############################ BEGIN #################################" >> backup.lg
date >> backup.lg

script -q -c "scp -P 19222 mkob@kobmine.garbagefile.net:/home/mkob/minecraftbe/backupAll/*.gz /home/mattk/backups/" >>
backup.lg


date >> backup.lg
echo "############################ END #################################" >> backup.lg


tar -zcvf "/home/mattk/backupstorage/$(date '+%Y-%m-%d').ALL.backups.tar.gz" /home/mattk/Backups/minecraft/
