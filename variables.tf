# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
# AWS_DEFAULT_REGION

###########
# Globals #
###########

variable "cluster_name" {
  type        = "string"
  description = "The name of the Airflow cluster (e.g. airflow-xyz). This variable is used to namespace all resources created by this module."
}

variable "cluster_stage" {
  type        = "string"
  description = "The stage of the Airflow cluster (e.g. prod)."
  default     = "dev"
}

variable "aws_region" {
  type        = "string"
  description = "AWS Region"
  default     = "us-east-1"
}

variable "aws_key_name" {
  type        = "string"
  description = "AWS KeyPair name"
}

variable "vpc_id" {
  type        = "string"
  description = "The ID of the VPC in which the nodes will be deployed.  Uses default VPC if not supplied."
  default     = ""
}

######
# S3 #
######

variable "s3_bucket_name" {
  type    = "string"
  default = ""
}

#######
# EC2 #
#######

variable "webserver_instance_type" {
  type        = "string"
  default     = "t3.micro"
  description = "Instance type for the Airflow Webserver"
}

variable "scheduler_instance_type" {
  type        = "string"
  default     = "t3.micro"
  description = "Instance type for the Airflow Scheduler"
}

variable "ami" {
  type        = "string"
  default     = "ami-0a313d6098716f372"
  description = "Ubuntu 18.04 AMI."
}

variable "spot_price" {
  description = "The maximum hourly price to pay for EC2 Spot Instances."
  default     = ""
}

variable "root_volume_ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized."
  default     = false
}

variable "root_volume_type" {
  type        = "string"
  description = "The type of volume. Must be one of: standard, gp2, or io1."
  default     = "standard"
}

variable "root_volume_size" {
  description = "The size, in GB, of the root EBS volume."
  default     = 50
}

variable "root_volume_delete_on_termination" {
  description = "Whether the volume should be destroyed on instance termination."
  default     = true
}

variable "associate_public_ip_address" {
  description = "If set to true, associate a public IP address with each EC2 Instance in the cluster."
  default     = false
}

############
# DATABASE #
############

variable "db_instance_type" {
  type        = "string"
  default     = "db.t2.micro"
  description = "Instance type for PostgreSQL database"
}

variable "db_username" {
  description = "PostgreSQL username."
  default     = ""
}

variable "db_password" {
  description = "PostgreSQL password."
}

variable "db_allocated_storage" {
  description = "Dabatase disk size."
  default     = 20
}
