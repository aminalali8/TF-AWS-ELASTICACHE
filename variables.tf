variable "aws_region" {
    type = string
    default = "eu-west-2"
}
variable "environment" {
    type = string
    default = "bunnyshell-unique"
}
variable "node_count" {
    type = string
    default = 1
}
variable "node_type" {
    type = string
    default = "cache.t2.micro"
}
# variable "availability_zones" { type = "list" }

# cache.t2.micro, cache.t2.small, cache.t2.medium
# cache.t3.micro, cache.t3.small, cache.t3.medium