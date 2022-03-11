variable "working_dir" {
  description = "working dir where a bash script is located"
  type = string
  default = "./"
}

variable "create_command" {
  description = "the default command to run as a create lifecycle event"
  default = "echo 1"
  type = string
}

variable "destroy_command" {
  description = "the default command to run as a destroy lifecycle event"
  default = "echo 1"
  type = string
}

variable "environment" {
  description = "a map of environment variables"
  type = map(string)
  default = {}
}
