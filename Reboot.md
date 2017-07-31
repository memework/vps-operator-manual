VPS Reboot 
============

In the case of a VPS reboot, some of its services autorestart,
but others don't (usually services through `pm2`):

 - Services that shouldn't require manual intervention
   - `postgres`, `mongo`, `redis`, `netdata`
 - Services that **require** manual intervention
   - `gogs`
     - Currently, start a session with the git user(`sudo -iu git`),
     Start a `tmux` session and `./gogs/gogs web` the shit out of it.

     - TODO: We should move to pm2 or write a systemd unit or something.
     ```bash
     sudo -u git pm2 start ~/gogs/gogs -- web
     ```

