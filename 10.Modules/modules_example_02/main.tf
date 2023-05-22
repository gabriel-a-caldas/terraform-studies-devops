provider "aws" {
  region = "us-west-2"
}

module "work_queue" {
  source     = "./sqs-with-backoff"
  queue_name = "work-queue"
}

output "work_queue" {
  value = module.work_queue.queue
}

output "work_queue_dead_letter_queue" {
  value = module.work_queue.dead_letter_queue
}
