# RabbitMQ

RabbitMQ with SSL support, management plugin, pre-installed and pre-enabled.

Usage with compose:

```
 rabbitmq:
  build: ./rabbitmq
  container_name: rabbitmq
  hostname: rabbitmq
  restart: "always"
  ports:
   - "4369:4369"
   - "5672:5672"
   - "15672:15672"
   - "25672:25672"
  volumes:
   - "./_persistence/rabbitmq/etc:/etc/rabbitmq"
   - "./_persistence/rabbitmq/data:/var/lib/rabbitmq/"
   - "./_persistence/rabbitmq/logs:/var/log/rabbitmq/"
  environment:
   RABBITMQ_ERLANG_COOKIE: "supersecret"
   RABBITMQ_DEFAULT_USER: "${USERNAME}"
   RABBITMQ_DEFAULT_PASS: "${PASSWORD}"
   RABBITMQ_SSL_CACERTFILE: "/ssl/ssl.cabundle"
   RABBITMQ_SSL_CERTFILE: "/ssl/ssl.crt"
   RABBITMQ_SSL_KEYFILE: "/ssl/ssl.key"
   RABBITMQ_SSL_VERIFY: "verify_none"
   RABBITMQ_SSL_FAIL_IF_NO_PEER_CERT: "false"
  volumes:
   - "./_ssl:/ssl"
```
