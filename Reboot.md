VPS Reboot 
============

In the case of a VPS reboot, some of its services autorestart,
but others don't (usually services through `pm2`):

 - Services that shouldn't require manual intervention
   - `postgres`, `mongo`
   - `netdata`
 - Services that **require** manual intervention
   - `caddy`
     - `sudo pm2 start caddy -- -conf /etc/caddy/Caddyfile -agree`
   - `gogs`
     ```bash
     sudo -iu git
     tmux # or tmux a
     cd gogs
     ./gogs web
     ```

