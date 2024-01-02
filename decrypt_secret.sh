#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="snyk1234" --output $HOME/secrets/token_snyk.txt token_snyk.txt.gpg
SNYK_TOKEN=`cat $HOME/secrets/token_snyk.txt`
