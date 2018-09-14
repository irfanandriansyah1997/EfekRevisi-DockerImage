# install nginx
apt-get update -y
apt-get -y install \
    --no-install-recommends \
    --allow-unauthenticated \
    nginx

# install node js
curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs

# clean current folder
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install global depedency
npm i -g @storybook/cli

# set UTC time
rm /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
