FROM java:openjdk-8

ADD akka-calc-assembly-1.0.jar /
ADD dock.conf /

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
