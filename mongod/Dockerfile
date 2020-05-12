FROM mongo:latest

RUN apt-get update && apt-get -q install -y

RUN echo "c3RvcmFnZToKICAgIGRiUGF0aDogIi9kYXRhL2RiIgogICAgam91cm5hbDoKICAgICAgICBlbmFibGVkOiB0cnVlCgpzeXN0ZW1Mb2c6CiAgICBkZXN0aW5hdGlvbjogZmlsZQogICAgcGF0aDogIi9kYXRhL2RiL21vbmdvZC5sb2ciCiAgICBsb2dBcHBlbmQ6IHRydWUKCm5ldDoKICAgIGJpbmRJcDogMC4wLjAuMAogICAgcG9ydDogMjcwMTcKCnJlcGxpY2F0aW9uOgogICByZXBsU2V0TmFtZTogVGVzdFJTCgo=" | base64 -d > /etc/mongod.conf

COPY --chown=mongodb:mongodb mongod_start.sh /usr/local/bin/
COPY --chown=mongodb:mongodb mongod_runextra.sh /usr/local/bin/

RUN chmod u+x /usr/local/bin/mongod_start.sh /usr/local/bin/mongod_runextra.sh

ENTRYPOINT ["mongod_start.sh"]

CMD mongod -f /etc/mongod.conf
