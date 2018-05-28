FROM debian:jessie
RUN apt-get update
RUN apt-get install wget
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' >> /etc/apt/sources.list.d/postgresql.list
RUN wget --no-check-certificate -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | apt-key add -
RUN apt-get update
RUN apt-get -y install postgresql-9.6
