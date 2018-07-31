FROM anapsix/alpine-java

COPY target/myFirstApp-0.0.1-SNAPSHOT.jar /opt

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java -jar /opt/myFirstApp-0.0.1-SNAPSHOT.jar"]