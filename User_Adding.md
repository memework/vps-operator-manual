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
 ```bash
 # TODO: Know if the authorized_keys2 thing is still valid
 ```

## Creating [Gogs](https://git.memework.org/) users

**TODO**: Add gogs user creation through admin panel

