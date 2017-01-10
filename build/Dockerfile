FROM rabbitmq:3.6.5
MAINTAINER Nenggang Pan Nenggang.Pan@Honeywell.com
env RABBITMQ_LOG_BASE=/var/log/rabbitmq
COPY $WORKSPACE/rabbitmq-cluster/.erlang.cookie /var/lib/rabbitmq/.erlang.cookie
RUN chmod 400 /var/lib/rabbitmq/.erlang.cookie
COPY $WORKSPACE/rabbitmq-cluster/rabbit-server /usr/local/bin/
COPY $WORKSPACE/rabbitmq-cluster/rabbit-node /usr/local/bin/
RUN chmod +x /usr/local/bin/rabbit-server
RUN chmod +x /usr/local/bin/rabbit-node
RUN touch /var/log/rabbitmq/rabbitmq.log
RUN rabbitmq-plugins --offline enable rabbitmq_management
#RUN rabbitmq-plugins --offline enable rabbitmq_mqtt
ADD $WORKSPACE/rabbitmq-cluster/rabbitmq_auth_backend_http-3.6.5.ez /plugins/
RUN chmod 644 /plugins/rabbitmq_auth_backend_http-3.6.5.ez

EXPOSE 5672 15672 25672 4369 1883 8883

CMD /bin/bash
