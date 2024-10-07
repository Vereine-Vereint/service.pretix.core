FROM pretix/standalone:stable
USER root
RUN pip3 install ${PRETIX_EXTENSIONS}
USER pretixuser
RUN cd /pretix/src && make production
