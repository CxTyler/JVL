resource "aws_mq_broker" "rmq_2" {
  broker_name = "RMQ_2"

  configuration {
    id       = aws_mq_configuration.test.id
    revision = aws_mq_configuration.test.latest_revision
  }

  engine_type        = "RabbitMQ"
  engine_version     = "5.15.10"
  host_instance_type = "mq.t2.micro"
  security_groups    = [aws_security_group.test.id]

  user {
    username = "ExampleUser"
    password = "MindTheGap"
  }
}
