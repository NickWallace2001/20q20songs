#!bin/bash/

#this script is for deployment, gonna try my hand at some bash
VersionDMZ=1;
echo "$VersionDMZ"
Version = $((Version+1))
echo $VersionDMZ
echo "deploying to qa-dmz";
#ssh to nate test server for deployment  requires keyless ssh
rsync -avzh testserver@ip:/dmz/
rsync -avzh testserver@ip:/spotify/

#Maybe wont have to gen token as part of deploy? not sure.
echo "auth token get"
#launch local php listener for auth token
echo "getting auth token got"
echo "sent to qa, refresh  browser to see changes";
echo "files sent to qa" > qa.txt

