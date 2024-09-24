FROM openjdk:17
COPY java-maven-app-1.1.0-SNAPSHOT.jar /rmi-rpm-api/rmi-rpm-api-version.jar
# COPY ./application.properties /rmi-rpm-api/application.properties
# COPY ./logback-spring.xml* ./root.cer* /rmi-rpm-api/
# COPY ./rmi.p12  /etc/pki/rmi/rmi.p12 
# RUN \
#     keytool -keystore $JAVA_HOME/lib/security/cacerts \
#     -storepass changeit -noprompt -trustcacerts -importcert -alias okta_root_alias \
#     -file /rmi-rpm-api/root.cer; exit 0
   
# RUN useradd -m -d /rmi rmi
# USER rmi
# RUN mkdir -p /rmi/log
# RUN chmod -R 777 /rmi

#ENTRYPOINT ["/bin/bash", "-c", "sleep infinity"]
ENTRYPOINT ["java","-jar","$(pwd)/target/java-maven-app-1.1.0-SNAPSHOT.jar /rmi-rpm-api/rmi-rpm-api-version.jar"]
