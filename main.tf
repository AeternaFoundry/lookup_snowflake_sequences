data "snowflake_sequences" "sequences_lookup" {
  for_each = var.sequences_lookup

  database = each.value.database
  schema   = each.value.schema
}

