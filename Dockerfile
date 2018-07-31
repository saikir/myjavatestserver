FROM anapsix/alpine-java

# for building
ARG jarName
ARG jarVersion

# for execution
ENV JARNAME=$jarName
ENV VERSION=$jarVersion

COPY target/$jarName-$jarVersion.jar /opt

EXPOSE 8080
CMD export DOCKERIMAGE="1.0.0"
ENTRYPOINT [ "sh", "-c", "java -jar /opt/$JARNAME-$VERSION.jar" ]