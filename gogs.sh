# Run this from time to time, I PROMISE it will save us
# gogs.sh - dump the gogs PostgreSQL database to your computer

ssh sex "pg_dump -U postgres gogs > gogsdump"
scp luna@sex:~/gogsdump ~

