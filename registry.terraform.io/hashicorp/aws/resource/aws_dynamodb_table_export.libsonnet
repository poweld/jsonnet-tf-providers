{
  local block = self,
  new(s3_bucket, table_arn):: (
    {}
    + block.with_s3_bucket(s3_bucket)
    + block.with_table_arn(table_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_billed_size_in_bytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"billed_size_in_bytes" expected to be of type "number"';
    {
      billed_size_in_bytes: converted,
    }
  ),
  with_end_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_time" expected to be of type "string"';
    {
      end_time: converted,
    }
  ),
  with_export_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_format" expected to be of type "string"';
    {
      export_format: converted,
    }
  ),
  with_export_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_status" expected to be of type "string"';
    {
      export_status: converted,
    }
  ),
  with_export_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_time" expected to be of type "string"';
    {
      export_time: converted,
    }
  ),
  with_export_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_type" expected to be of type "string"';
    {
      export_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_item_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"item_count" expected to be of type "number"';
    {
      item_count: converted,
    }
  ),
  with_manifest_files_s3_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"manifest_files_s3_key" expected to be of type "string"';
    {
      manifest_files_s3_key: converted,
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
  with_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  with_s3_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_owner" expected to be of type "string"';
    {
      s3_bucket_owner: converted,
    }
  ),
  with_s3_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
    {
      s3_prefix: converted,
    }
  ),
  with_s3_sse_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_sse_algorithm" expected to be of type "string"';
    {
      s3_sse_algorithm: converted,
    }
  ),
  with_s3_sse_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_sse_kms_key_id" expected to be of type "string"';
    {
      s3_sse_kms_key_id: converted,
    }
  ),
  with_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  with_table_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_arn" expected to be of type "string"';
    {
      table_arn: converted,
    }
  ),
  incremental_export_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_export_from_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_from_time" expected to be of type "string"';
      {
        export_from_time: converted,
      }
    ),
    with_export_to_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_to_time" expected to be of type "string"';
      {
        export_to_time: converted,
      }
    ),
    with_export_view_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_view_type" expected to be of type "string"';
      {
        export_view_type: converted,
      }
    ),
  },
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
  with_incremental_export_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      incremental_export_specification: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_incremental_export_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      incremental_export_specification+: converted,
    }
  ),
}
