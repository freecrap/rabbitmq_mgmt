FROM rabbitmq:3.8.11-management-alpine
RUN rabbitmq-plugins enable rabbitmq_management
