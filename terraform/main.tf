#Fila SQS Principal
resource "aws_sqs_queue" "sqs_principal" {
  name                      = "sqs_principal_${terraform.workspace}"
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.sqs_dlq.arn
    maxReceiveCount     = 1
  })

  tags = {
    Environment = "${terraform.workspace}"
  }
}

#Fila SQS DLQ
resource "aws_sqs_queue" "sqs_dlq" {
  name                      = "sqs_dlq_${terraform.workspace}"
  tags = {
    Environment = "${terraform.workspace}"
  }
}
