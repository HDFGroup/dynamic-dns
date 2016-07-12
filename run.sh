# run Docker container
# 
# TBD - this is not actually working - container runs but doesn't respond to dns requests
#
DOMAIN="mydev.hdfgroup.org"
LOCAL_IP="52.5.25.142"
DEFAULT_DNS="8.8.8.8"
#  --publish=${LOCAL_IP}:53:53/udp \
docker run -d -p 53:53 --dns=127.0.0.1 --name dyndns \
  --env DOMAIN=${DOMAIN} \
  --env LOCAL_IP=${LOCAL_IP} \
  --env DEFAULT_DNS=${DEFAULT_DNS} \
  hdfgroup/dynamic-dns
