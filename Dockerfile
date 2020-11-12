FROM alpine
RUN apk add --no-cache xz ca-certificates curl ncurses-terminfo \
  && curl -LO https://github.com/tmate-io/tmate/releases/download/2.4.0/tmate-2.4.0-static-linux-amd64.tar.xz \
  && tar -xvf tmate-2.4.0-static-linux-amd64.tar.xz \
  && mv tmate-2.4.0-static-linux-amd64/tmate /usr/local/bin/

ENTRYPOINT ["tmate", "-F"]

EXPOSE 22222
EXPOSE 2222
EXPOSE 22
