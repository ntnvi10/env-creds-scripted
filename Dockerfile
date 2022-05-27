FROM alpine
# ARG USER
# ARG PASSWD
# RUN echo "Username is ${USER}"
# RUN echo "Password is ${PASSWD}"
# RUN export USER=${USER}
# RUN export PASSWD=${PASSWD}
ENV USER=${USER}
ENV PASSWD=${PASSWD}
