from ubuntu:latest

RUN apt-get update && \
   apt-get -y install openjdk-18-jdk libgl1 libx11-6 libxxf86vm1 xz-utils curl

RUN curl -L "https://github.com/qupath/qupath/releases/download/v0.4.3/QuPath-0.4.3-Linux.tar.xz" | tar -Jvxf - && \
   chmod 755 /QuPath/bin/QuPath

CMD ["/QuPath/bin/QuPath"]

