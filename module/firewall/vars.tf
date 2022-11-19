variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "project" {
  type = string
}

variable "credentials" {
  type = string
}

variable "name" {
  type = string
}

variable "network" {
  type = string
}

variable "ports" {
  type = list
}

variable "target_tags" {
  type = list
}

variable "source_ranges" {
  type = list
}