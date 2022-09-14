#!/bin/bash
echo "-------------------- Starting Installer ---------------------------"
echo "Deploying "
cd /home/azureuser
wget https://github.com/servian/TechChallengeApp/releases/download/v.0.10.0/TechChallengeApp_v.0.10.0_linux64.zip
unzip TechChallengeApp_v.0.10.0_linux64.zip
json=$(cat <<-END
"DbUser" = "postgres"
"DbPassword" = "<PasswordHere>"
"DbName" = "<DBnameHere"
"DbPort" = "5432"
"DbHost" = "<DBHost>"
"ListenHost" = "localhost"
"ListenPort" = "3000"
END
)
echo "${json}" > "/home/azureuser/dist/conf.toml"

cd /dist
./TechChallengeApp updatedb
./TechChallengeApp serve
