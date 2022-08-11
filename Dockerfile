FROM image-registry.openshift-image-registry.svc:5000/openshift/fuse7-java-openshift:1.6
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
#ENTRYPOINT ["java","-jar","/app.jar" , "--spring.config.location=file:///etc/config/application.properties"]
