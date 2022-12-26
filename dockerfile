FROM openjdk:8
EXPOSE 8080
ADD target/ myweb.war
ENTRYPOINT [ "java", -war","/ myweb.war]