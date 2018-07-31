FROM anapsix/alpine-java

ARG jarName #for building
ARG jarVersion

ENV JARNAME=$jarName #for execution
ENV VERSION=$jarVersion

COPY target/$jarName-jarVersion.jar /opt

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java -jar /opt/$JARNAME-$VERSION.jar" ]