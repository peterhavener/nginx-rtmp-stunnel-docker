#
# A modification of tiangolo/nginx-rtmp to support RTMPS using stunnel4
#

# from tinagolo/nginx-rtmp

FROM tiangolo/nginx-rtmp

LABEL maintainer="Peter Havener <peter.havener@gmail.com>"

# Set up config file
VOLUME /etc/nginx

#
# maintained by peterhavener (peter.havener@gmail.com)
#

# install stunnel4

RUN apt-get update && \
    apt-get install -y stunnel4

COPY docker-entrypoint.sh /entrypoint.sh

VOLUME /etc/stunnel

ENTRYPOINT ["/entrypoint.sh"]
