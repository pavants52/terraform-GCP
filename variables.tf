variable "ssh_public_key_filepath" {                             # this var declared in main file
  description = "Filepath for the ssh public key"
  type        = "string"

  default = "safe.pub"
}
