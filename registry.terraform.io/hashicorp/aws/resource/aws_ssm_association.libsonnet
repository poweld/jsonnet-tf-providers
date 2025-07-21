{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_apply_only_at_cron_interval(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_only_at_cron_interval" expected to be of type "bool"';
    {
      apply_only_at_cron_interval: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_id" expected to be of type "string"';
    {
      association_id: converted,
    }
  ),
  with_association_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_name" expected to be of type "string"';
    {
      association_name: converted,
    }
  ),
  with_automation_target_parameter_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"automation_target_parameter_name" expected to be of type "string"';
    {
      automation_target_parameter_name: converted,
    }
  ),
  with_compliance_severity(value):: (
    local converted = value;
    assert std.isString(converted) : '"compliance_severity" expected to be of type "string"';
    {
      compliance_severity: converted,
    }
  ),
  with_document_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_version" expected to be of type "string"';
    {
      document_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_concurrency(value):: (
    local converted = value;
    assert std.isString(converted) : '"max_concurrency" expected to be of type "string"';
    {
      max_concurrency: converted,
    }
  ),
  with_max_errors(value):: (
    local converted = value;
    assert std.isString(converted) : '"max_errors" expected to be of type "string"';
    {
      max_errors: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
  with_schedule_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
    {
      schedule_expression: converted,
    }
  ),
  with_sync_compliance(value):: (
    local converted = value;
    assert std.isString(converted) : '"sync_compliance" expected to be of type "string"';
    {
      sync_compliance: converted,
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
  with_wait_for_success_timeout_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"wait_for_success_timeout_seconds" expected to be of type "number"';
    {
      wait_for_success_timeout_seconds: converted,
    }
  ),
  output_location:: {
    local block = self,
    new(s3_bucket_name):: (
      {}
      + block.with_s3_bucket_name(s3_bucket_name)
    ),
    with_s3_bucket_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
      {
        s3_bucket_name: converted,
      }
    ),
    with_s3_key_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
      {
        s3_key_prefix: converted,
      }
    ),
    with_s3_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_region" expected to be of type "string"';
      {
        s3_region: converted,
      }
    ),
  },
  targets:: {
    local block = self,
    new(key, values):: (
      {}
      + block.with_key(key)
      + block.with_values(values)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  with_output_location(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_location: value,
    }
  ),
  with_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets: value,
    }
  ),
  with_output_location_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_location+: converted,
    }
  ),
  with_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets+: converted,
    }
  ),
}
