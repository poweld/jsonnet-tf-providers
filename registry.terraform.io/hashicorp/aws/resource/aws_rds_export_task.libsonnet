{
  local block = self,
  new(export_task_identifier, iam_role_arn, kms_key_id, s3_bucket_name, source_arn):: (
    {}
    + block.with_export_task_identifier(export_task_identifier)
    + block.with_iam_role_arn(iam_role_arn)
    + block.with_kms_key_id(kms_key_id)
    + block.with_s3_bucket_name(s3_bucket_name)
    + block.with_source_arn(source_arn)
  ),
  with_export_only(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"export_only" expected to be of type "list"';
    {
      export_only: converted,
    }
  ),
  with_export_only_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"export_only" expected to be of type "list"';
    {
      export_only+: converted,
    }
  ),
  with_export_task_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_task_identifier" expected to be of type "string"';
    {
      export_task_identifier: converted,
    }
  ),
  with_failure_cause(value):: (
    local converted = value;
    assert std.isString(converted) : '"failure_cause" expected to be of type "string"';
    {
      failure_cause: converted,
    }
  ),
  with_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_percent_progress(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"percent_progress" expected to be of type "number"';
    {
      percent_progress: converted,
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
  with_s3_bucket_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
    {
      s3_bucket_name: converted,
    }
  ),
  with_s3_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
    {
      s3_prefix: converted,
    }
  ),
  with_snapshot_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_time" expected to be of type "string"';
    {
      snapshot_time: converted,
    }
  ),
  with_source_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_arn" expected to be of type "string"';
    {
      source_arn: converted,
    }
  ),
  with_source_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_type" expected to be of type "string"';
    {
      source_type: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_task_end_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_end_time" expected to be of type "string"';
    {
      task_end_time: converted,
    }
  ),
  with_task_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_start_time" expected to be of type "string"';
    {
      task_start_time: converted,
    }
  ),
  with_warning_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"warning_message" expected to be of type "string"';
    {
      warning_message: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
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
