variable "image_id" {
  default     = "ami-0a763bef4f952ec08" # Ubuntu 20.04 (AMI) image em eu-west-1
  type        = string
  description = "The machine image (AMI) ID to be used for the server."

  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI ID, starting with \"ami-\"."
  }
}
