FROM phusion/baseimage:0.10.1

LABEL maintainer "Irfan Andriansyah <irfanandriansyah10@gmail.com>"

WORKDIR /

# copy folder script & utilities
COPY . .

# install dependencies
RUN chmod +x script/*.sh
RUN script/dependencies.sh

# install utilities
RUN apt-get install -y \
	--no-install-recommends \
	--allow-unauthenticated \
	htop tmux nano

CMD ["/sbin/my_init"]
