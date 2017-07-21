VPS Reboot 
============

In the case of a VPS reboot, some of its services autorestart,
but others don't (usually services through `pm2`):

 - Services that shouldn't require manual intervention
   - `postgres`, `mongo`
   - `netdata`
 - Services that **require** manual intervention
   - `caddy`
     - Runs on root, this is expected.
     ```bash
     sudo pm2 start caddy -- -conf /etc/caddy/Caddyfile -agree
     ```

   - `gogs`
     ```bash
     sudo -u git pm2 start ~/gogs/gogs -- web
     ```

