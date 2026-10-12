variable "sequences_lookup" {
  description = <<EOT
Map of sequences_lookup, attributes below
Required:
    - database
    - schema
EOT

  type = map(object({
    database = string
    schema   = string
  }))
}

