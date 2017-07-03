FROM docker.elastic.co/logstash/logstash:5.4.3
RUN logstash-plugin install logstash-filter-translate
RUN logstash-plugin install logstash-filter-jdbc_streaming
RUN logstash-plugin install logstash-filter-aggregate
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN mkdir /usr/share/logstash/last_run
ADD pipeline/ /usr/share/logstash/pipeline/
ADD template/ /usr/share/logstash/template/
ADD mysql-connector-java-5.1.42-bin.jar /usr/share/logstash/lib/mysql-connector-java-5.1.42-bin.jar
