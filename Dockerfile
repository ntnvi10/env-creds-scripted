FROM alpine
ARG USER=${USER}
ARG PASSWD=${PASSWD}
RUN echo "Username is ${USER}"
RUN echo "Password is ${PASSWD}"
RUN export USER=${USER}
RUN export PASSWD=${PASSWD}
