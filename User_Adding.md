Adding new users to the VPS
==============================

## Creating UNIX users

`USERNAME` here is to be switched by the
new user's username.

 - Creating the account
 ```bash
 sudo -H useradd -m USERNAME
 ```
 - Granting sudo permissions
 ```bash
 sudo -H usermod -aG wheel USERNAME
 ```

 - Adding a SSH Key to the new user
   - It starts with `ssh-rsa` and then a lot of random letters,
    It finishes with an identification for the key(usually an email, but can be anything)

   - If it starts with `-----BEGIN RSA PRIVATE KEY-----` **YOU SHOULDN'T DO ANYTHING WITH IT**, signal the
    sender that they leaked their private key and the best course of action is to generate a new one

   - Adding public key:
   ```bash
   sudo -Hu USERNAME nano /home/USERNAME/.ssh/authorized_keys
   ```

## Creating [Gogs](https://git.memework.org/) users

**TODO**: Add gogs user creation through admin panel
**TODO**: Add manually createing gogs user and making admin via postgres commands
