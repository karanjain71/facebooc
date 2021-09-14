FROM ubuntu

WORKDIR /opt/facebooc

RUN apt-get update

RUN apt-get install -yq build-essential make libsqlite3-dev sqlite3

COPY . /opt/facebooc/

RUN make all

EXPOSE 16000

CMD [ "bin/facebooc" ]

