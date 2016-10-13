FROM golang
ADD . app/
WORKDIR app/
RUN make install
EXPOSE 5000
CMD make run
