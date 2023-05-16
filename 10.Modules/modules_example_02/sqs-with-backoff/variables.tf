variable "queue_name" {
  description = "Name of the queue"
}

variable "max_receive_count"{
    description = "The maximum number of times that a message can be received by consumer"
    default = 5
}

variable "visibility_timeout"{
    default = 30
}