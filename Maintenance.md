Maintenance
=============

 - Read [Arch Linux News](https://www.archlinux.org/news/) before doing any
  system upgrade.
 - `sudo pacman -Syu`
   - Signal on `#vps` before doing the upgrade, and wait for another member
   to give you the good sign to upgrade
   - If any error happens, *stay calm* and wait until a more experienced member(no one)
   to come and help you
   - **DO NOT DO `sudo pacman --force -Syu`!**
   - **DO NOT DO `sudo pacman -Sy`!**

## Using `systemctl`

Don't forget to do `sudo systemctl status SERVICE` after doing
the commands descibred here to check if they actually worked or not.

[Writing unit files for systemd](https://wiki.archlinux.org/index.php/Systemd#Writing_unit_files)

 - Enable a service to start on boot
   - `sudo systemctl enable SERVICE`
 - Start a service
   - `sudo systemctl start SERVICE`
 - Stop a service
   - `sudo systemctl stop SERVICE`
 - Restart a service
   - `sudo systemctl restart SERVICE`

 - **Important services to check status on**
   - Don't even think on stopping them, seriously.
   - `sshd`, `postgres`, `mongodb`, `redis`, `netdata`, `ntpd`

## Backuping

 - Signal heating to backup from time to time
 - Do backups of your home folder to your computer from time to time(`scp` does the job)
 - Dumping Gogs database
   - `pg_dump -u postgres gogs > gogs_dump`

