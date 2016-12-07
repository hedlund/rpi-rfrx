FROM resin/rpi-raspbian
MAINTAINER Henrik Hedlund <henrik@hedlund.im>

ENV ARCH=arm
ENV CROSS_COMPILE=/usr/bin/

# Update and install python
RUN apt-get update -y && \
	apt-get install -y build-essential python3-dev python3-pip && \
	pip3 install rpi-rf && \
	mkdir /workdir

ADD rfrx.py /workdir/
WORKDIR /workdir

CMD [ "python3", "rfrx.py" ]
