output "sequences_lookup_id" {
  description = "Map of id values across all sequences_lookup, keyed the same as var.sequences_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_sequences.sequences_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sequences_lookup_database" {
  description = "Map of database values across all sequences_lookup, keyed the same as var.sequences_lookup except keys with no database are omitted"
  value       = { for k, v in data.snowflake_sequences.sequences_lookup : k => v.database if v.database != null && length(v.database) > 0 }
}
output "sequences_lookup_schema" {
  description = "Map of schema values across all sequences_lookup, keyed the same as var.sequences_lookup except keys with no schema are omitted"
  value       = { for k, v in data.snowflake_sequences.sequences_lookup : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "sequences_lookup_sequences" {
  description = "Map of sequences values across all sequences_lookup, keyed the same as var.sequences_lookup except keys with no sequences are omitted"
  value       = { for k, v in data.snowflake_sequences.sequences_lookup : k => v.sequences if v.sequences != null && length(v.sequences) > 0 }
}

