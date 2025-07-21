{
  local block = self,
  new(bucket_name, endpoint_id, endpoint_type, service_access_role_arn):: (
    {}
    + block.with_bucket_name(bucket_name)
    + block.with_endpoint_id(endpoint_id)
    + block.with_endpoint_type(endpoint_type)
    + block.with_service_access_role_arn(service_access_role_arn)
  ),
  with_add_column_name(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"add_column_name" expected to be of type "bool"';
    {
      add_column_name: converted,
    }
  ),
  with_add_trailing_padding_character(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"add_trailing_padding_character" expected to be of type "bool"';
    {
      add_trailing_padding_character: converted,
    }
  ),
  with_bucket_folder(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_folder" expected to be of type "string"';
    {
      bucket_folder: converted,
    }
  ),
  with_bucket_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
    {
      bucket_name: converted,
    }
  ),
  with_canned_acl_for_objects(value):: (
    local converted = value;
    assert std.isString(converted) : '"canned_acl_for_objects" expected to be of type "string"';
    {
      canned_acl_for_objects: converted,
    }
  ),
  with_cdc_inserts_and_updates(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cdc_inserts_and_updates" expected to be of type "bool"';
    {
      cdc_inserts_and_updates: converted,
    }
  ),
  with_cdc_inserts_only(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cdc_inserts_only" expected to be of type "bool"';
    {
      cdc_inserts_only: converted,
    }
  ),
  with_cdc_max_batch_interval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cdc_max_batch_interval" expected to be of type "number"';
    {
      cdc_max_batch_interval: converted,
    }
  ),
  with_cdc_min_file_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cdc_min_file_size" expected to be of type "number"';
    {
      cdc_min_file_size: converted,
    }
  ),
  with_cdc_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"cdc_path" expected to be of type "string"';
    {
      cdc_path: converted,
    }
  ),
  with_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  with_compression_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"compression_type" expected to be of type "string"';
    {
      compression_type: converted,
    }
  ),
  with_csv_delimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"csv_delimiter" expected to be of type "string"';
    {
      csv_delimiter: converted,
    }
  ),
  with_csv_no_sup_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"csv_no_sup_value" expected to be of type "string"';
    {
      csv_no_sup_value: converted,
    }
  ),
  with_csv_null_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"csv_null_value" expected to be of type "string"';
    {
      csv_null_value: converted,
    }
  ),
  with_csv_row_delimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"csv_row_delimiter" expected to be of type "string"';
    {
      csv_row_delimiter: converted,
    }
  ),
  with_data_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_format" expected to be of type "string"';
    {
      data_format: converted,
    }
  ),
  with_data_page_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"data_page_size" expected to be of type "number"';
    {
      data_page_size: converted,
    }
  ),
  with_date_partition_delimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_partition_delimiter" expected to be of type "string"';
    {
      date_partition_delimiter: converted,
    }
  ),
  with_date_partition_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"date_partition_enabled" expected to be of type "bool"';
    {
      date_partition_enabled: converted,
    }
  ),
  with_date_partition_sequence(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_partition_sequence" expected to be of type "string"';
    {
      date_partition_sequence: converted,
    }
  ),
  with_date_partition_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_partition_timezone" expected to be of type "string"';
    {
      date_partition_timezone: converted,
    }
  ),
  with_detach_target_on_lob_lookup_failure_parquet(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"detach_target_on_lob_lookup_failure_parquet" expected to be of type "bool"';
    {
      detach_target_on_lob_lookup_failure_parquet: converted,
    }
  ),
  with_dict_page_size_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"dict_page_size_limit" expected to be of type "number"';
    {
      dict_page_size_limit: converted,
    }
  ),
  with_enable_statistics(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_statistics" expected to be of type "bool"';
    {
      enable_statistics: converted,
    }
  ),
  with_encoding_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"encoding_type" expected to be of type "string"';
    {
      encoding_type: converted,
    }
  ),
  with_encryption_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_mode" expected to be of type "string"';
    {
      encryption_mode: converted,
    }
  ),
  with_endpoint_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_arn" expected to be of type "string"';
    {
      endpoint_arn: converted,
    }
  ),
  with_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
    {
      endpoint_id: converted,
    }
  ),
  with_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  with_engine_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_display_name" expected to be of type "string"';
    {
      engine_display_name: converted,
    }
  ),
  with_expected_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  with_external_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_id" expected to be of type "string"';
    {
      external_id: converted,
    }
  ),
  with_external_table_definition(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_table_definition" expected to be of type "string"';
    {
      external_table_definition: converted,
    }
  ),
  with_glue_catalog_generation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"glue_catalog_generation" expected to be of type "bool"';
    {
      glue_catalog_generation: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ignore_header_rows(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ignore_header_rows" expected to be of type "number"';
    {
      ignore_header_rows: converted,
    }
  ),
  with_include_op_for_full_load(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_op_for_full_load" expected to be of type "bool"';
    {
      include_op_for_full_load: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_max_file_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_file_size" expected to be of type "number"';
    {
      max_file_size: converted,
    }
  ),
  with_parquet_timestamp_in_millisecond(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"parquet_timestamp_in_millisecond" expected to be of type "bool"';
    {
      parquet_timestamp_in_millisecond: converted,
    }
  ),
  with_parquet_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"parquet_version" expected to be of type "string"';
    {
      parquet_version: converted,
    }
  ),
  with_preserve_transactions(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"preserve_transactions" expected to be of type "bool"';
    {
      preserve_transactions: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_rfc_4180(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"rfc_4180" expected to be of type "bool"';
    {
      rfc_4180: converted,
    }
  ),
  with_row_group_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"row_group_length" expected to be of type "number"';
    {
      row_group_length: converted,
    }
  ),
  with_server_side_encryption_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_side_encryption_kms_key_id" expected to be of type "string"';
    {
      server_side_encryption_kms_key_id: converted,
    }
  ),
  with_service_access_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
    {
      service_access_role_arn: converted,
    }
  ),
  with_ssl_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssl_mode" expected to be of type "string"';
    {
      ssl_mode: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_timestamp_column_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"timestamp_column_name" expected to be of type "string"';
    {
      timestamp_column_name: converted,
    }
  ),
  with_use_csv_no_sup_value(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_csv_no_sup_value" expected to be of type "bool"';
    {
      use_csv_no_sup_value: converted,
    }
  ),
  with_use_task_start_time_for_full_load_timestamp(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_task_start_time_for_full_load_timestamp" expected to be of type "bool"';
    {
      use_task_start_time_for_full_load_timestamp: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
