FROM golang:1.7.4

ADD . app/
WORKDIR app/
RUN make install
EXPOSE 8080
CMD make run
