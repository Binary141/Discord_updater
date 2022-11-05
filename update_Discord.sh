# Download the new tar file to the current working directory
wget "https://discord.com/api/download?platform=linux&format=tar.gz" -O discord.tar

# Extract the downloaded tar file to the current working directory
tar -xvf discord.tar

# Get the current date in 'month-day-year' format
date=$(date +'%m-%d-%Y')

# Make a backup of the old version just in case anything goes wrong
sudo mv -f /opt/discord /opt/discord-${date}

sudo mkdir /opt/discord

# Extract the new Discord version to the proper place
sudo cp -r Discord/* /opt/discord/

# Cleanup the downloaded and extracted files
rm -rf discord.tar
rm -rf Discord/
