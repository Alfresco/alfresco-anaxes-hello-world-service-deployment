FROM quay.io/alfresco/alfresco-base-java:0.1.0

ENV SERVICE_JAR=*.jar
ADD $SERVICE_JAR ./
EXPOSE 8080
ENTRYPOINT java -jar $SERVICE_JAR
