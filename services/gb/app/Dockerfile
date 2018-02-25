FROM java:8-jre

ADD https://github.com/gitbucket/gitbucket/releases/download/4.21.2/gitbucket.war /opt/gitbucket.war
RUN ln -s /gitbucket /root/.gitbucket
VOLUME /gitbucket
EXPOSE 8080
EXPOSE 29418
COPY out.cer /gitbucket/
# keytool is an interactive tool...
RUN echo yes | keytool -keystore /etc/ssl/certs/java/cacerts -storepass changeit -importcert -file /gitbucket/out.cer 

CMD ["java", "-jar", "/opt/gitbucket.war"]
