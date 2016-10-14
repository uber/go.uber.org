FROM golang
ADD . app/
WORKDIR app/
RUN make install
EXPOSE 8080
CMD make run
