FROM debian:buster

RUN apt update && apt install -y ca-certificates curl gnupg

COPY sources-list /etc/apt/sources.list.d/cap.list

RUN curl https://apt.canterburyairpatrol.org/repository.key | apt-key add -
