
FROM maven:3.6-jdk-8


COPY org.monacoex.dsl.monascript.parent/ apps/

WORKDIR apps
RUN mvn clean install -DskipTests

EXPOSE 8080

WORKDIR org.monacoex.dsl.monascript.web
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:3.0.1:go-offline

CMD mvn jetty:run
