ARG version="latest"
FROM ubuntu:$version

ARG license_key="12345-6789"
ENV ORA_PORT=1521
RUN echo $version
LABEL maintainer suraj.bora@oracle.com

RUN mkdir /code

COPY Sample.sh /code/Sample.sh
RUN echo $ORA_PORT
RUN chmod +x /code/Sample.sh
RUN echo $license_key
workdir /code
CMD sh /code/Sample.sh
