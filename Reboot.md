VPS Reboot 
============

In the case of a VPS reboot, some of its services autorestart,
but others don't (usually services through `pm2`):

 - Services that shouldn't require manual intervention
   - `postgres`, `mongo`, `redis`, `netdata`
 - Services that **require** manual intervention
   - None, yet.

