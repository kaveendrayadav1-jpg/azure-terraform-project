

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  type    = string
  default = "rg-terraform-demo"
}

variable "vnet_name" {
  type    = string
  default = "vnet-terraform"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "vm_admin_username" {
  type    = string
  default = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key content"
  type        = string
  sensitive   = true
}

variable "postgres_admin_username" {
  type    = string
  default = "pgadminuser"
}

variable "postgres_admin_password" {
  description = "PostgreSQL administrator password"
  type        = string
  sensitive   = true
}

