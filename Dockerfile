FROM python:3.5
MAINTAINER John Readey <jreadey@hdfgroup.org>
RUN cd /usr/local/src                                    ; \
    pip install --upgrade pip                            ; \
    pip install twisted                                   
WORKDIR /usr/local/src         
RUN git clone https://github.com/HDFGroup/dynamic-dns.git   
WORKDIR /usr/local/src/dynamic-dns                                                         
                              
EXPOSE 53 

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

