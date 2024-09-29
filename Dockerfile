FROM mongo:latest

COPY ./init-scripts/cipo.json /tmp/cipo.json
COPY ./init-scripts/espacenet.json /tmp/espacenetjson
COPY ./init-scripts/googlepatent.json /tmp/googlepatent.json
COPY ./init-scripts/uspto.json /tmp/uspto.json
COPY ./init-scripts/epo.json /tmp/epo.json

COPY ./init-scripts/importscript.sh /docker-entrypoint-initdb.d/

ADD ./init-scripts/init.js /docker-entrypoint-initdb.d/

