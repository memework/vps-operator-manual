Adding new users to the VPS
==============================

## Creating using `newuser` script

It is preferred to use the `newuser` script because it already
sets SSH keys to the newly created user, sets their password to expired, creates their home directory, etc.

```bash
sudo newuser USERNAME "USER_PUBLIC_KEY"
```

Example:
```bash
sudo newuser someone "ssh-rsa 
AAAAB3NzaC1yc2EAAAADAQABAAACAQDVipc3adl9cWZvn8ubagnhmVipgMW3MtC2cU3BSMzyHGFbIViC+strdR6UaLPaV7lzPyxKfrCOr4BFPeWden41nCCuCYwOWoEejhrgML4dHUUMf4BPZNWFaAvNagpcofj2zjiyaPK0ikf7yAJjT+mnQGyW7cj96T/x26y35kA2gmur91EQ6Bv2pTDscHpdSQl01Effi9JrDRXMR6fQHL4I3ZOu3hi1Ca2iX8ErzsbjGK1zIuYxC8knHpKjM9OC7r01TNUCukI1ryRS9b+UCVd0HWFm5GekLTuB6ouI0r6WfsY3AWm2aoUxYyVFwlFDXeBvXjrLHTksSsWr4bRhq9XmCLW4BWjAvpiX6RKbrH/jeUK7CTQ9iEMMf+H8VLA8hVx4Oo5ie8fWO+cNSFh8UEoaRRwVlp1f60h8S0KTw8wScohHZMH38x035hlRYWdQWosIr513VgLMRQ/8zoyEtuwwwsa7NG+j5wsOrtUxZl0qoN+sGfRSE8JWiBBYAntKOGbsZTn0Sw4t2J4dqWasdNM7Bwgt1M9TsFmDq9rSI/TzeQMNapWJc2YchsO+Icqn9tHmx6CNtHj3vLAfo6QnZnaDVRX/o+NcSqhSFDjMCBVx9S1mBvhKPMBzMpcSqjMX5Jr9An55tibstb+AsV8+8+cdZIPZKRsN2HJJ9dJ3sAm1PQ== 
someone@somehost"
```

## Resetting Lost/Forgotten passwords

Super easy, just run
```
sudo chage -d0 "username"
sudo passwd -d "username"
```
Then, the next time they log in, they'll be prompted to set their password!

## Creating UNIX users

Only if you know what you're doing! Otherwise use `newuser` script above!
`USERNAME` here is to be switched by the
new user's username.

 - Creating the account
 ```bash
 sudo -H useradd -m USERNAME
 ```
 - Granting administrator permissions (WARNING! NEVER USE UNLESS YOU TALK TO THE OTHER ADMINS!)
 ```bash
 sudo -H usermod -aG adm USERNAME
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
**TODO**: Add manually creating gogs user and making admin via postgres commands
