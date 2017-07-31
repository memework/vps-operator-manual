# Backuping

Guidelines to backup the stuff we have
 - Signal heating to backup from time to time
 - Do backups of your home folder to your computer from time to time(`scp` does the job)
 - Backup Postgres
   - `sudo -u postgres pg_dumpall > postgres.dump`
   - Transfer in your computer: `scp meme:~/postgres.dump ~`
 - Backup Mongo
   - `cd ~ && mongodump`
   - Transfer in your computer: `scp meme:~/dump ~/memework-mongo-dump`

# Restoring

 - Restoring postgres from nothing using a backup from `pg_dumpall`
   - Install postgres
   - `scp postgres.dump meme:~` in the machine that has the backup
   - Enter VPS:
     - `sudo systemctl enable postgres && sudo systemctl start postgres`
     - `sudo -u postgres initdb --locale en_US.UTF-8 -D '/var/lib/postgres/data'`
     - `sudo -u postgres psql -f postgres.dump postgres`
     - You should see a lot of SQL commands, like `ALTER TABLE` or whatever
   - Done!

 - Restoring mongo from nothing using a backup from `mongodump`
   - Install mongo
   - `scp memework-mongo-dump meme:~` in the machine that has the backup
   - Enter VPS:
     - `sudo pacman -S --needed mongodb-tools`
     - `sudo systemctl enable mongodb && sudo systemctl start mongodb`
     - `mv memework-mongo-dump dump`
     - `mongorestore`
   - Done!
