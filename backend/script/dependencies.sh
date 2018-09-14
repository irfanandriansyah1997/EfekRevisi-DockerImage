# install nginx & mysql
apt-get update -y
apt-get -y install \
    --no-install-recommends \
    --allow-unauthenticated \
    nginx \
    mysql-server mysql-client libmysqlclient-dev

# install mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 \
  && echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y \
    --no-install-recommends \
    --allow-unauthenticated \
    mongodb-org

# install python
apt-get install -y \
    --no-install-recommends \
    --allow-unauthenticated \
    python python-dev python-pip python-virtualenv

# clean current folder
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set UTC time
rm /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
