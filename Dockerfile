FROM tomcat:9

ADD ./setenv.sh /usr/local/tomcat/bin

WORKDIR /tmp
RUN wget http://buildservice.bluespice.com/REL1_27/webservices/solr/solr.zip
RUN mkdir -p /opt/bluespice/data
RUN unzip solr.zip -d /opt/bluespice/data

WORKDIR /usr/local/tomcat/webapps
RUN wget http://buildservice.bluespice.com/REL1_27/webservices/solr/solr.war

EXPOSE 8080
