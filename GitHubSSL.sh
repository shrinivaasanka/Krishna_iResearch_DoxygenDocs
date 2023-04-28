#!/bin/bash

echo $SSL_AUTH_SOCK
git remote set-url origin git@github.com:shrinivaasanka/Krishna_iResearch_DoxygenDocs.git 
eval "$(ssh-agent -s)"
ssh-add /root/.ssh/id_ed25519_gitlab
ssh git@github.com
#git clone git@github.com:shrinivaasanka/Krishna_iResearch_DoxygenDocs.git 
git push 

