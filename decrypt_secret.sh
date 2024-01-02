#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="snyk1234" --output $HOME/secrets/token_snyk.txt token_snyk.txt.gpg
#v=`cat $HOME/secrets/token_snyk.txt`
#echo "$v" >> $SNYK_TOKEN
