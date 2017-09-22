FROM java:6b38-jdk
MAINTAINER lucasisrael <mcluck.ti@gmail.com>

ENV JBOSS_HOME /opt/sicat/app
ENV SICAT_HOME /opt/sicat/app

COPY sicat /opt/sicat

EXPOSE 55555
EXPOSE 18080
EXPOSE 5445
EXPOSE 5446

WORKDIR /opt/sicat/app/bin

CMD ["/opt/sicat/app/bin/run.sh", "-c sgap", "-b 0.0.0.0"]