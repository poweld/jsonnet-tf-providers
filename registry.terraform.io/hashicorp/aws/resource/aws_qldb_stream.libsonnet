{
  local block = self,
  new(inclusive_start_time, ledger_name, role_arn, stream_name):: (
    {}
    + block.with_inclusive_start_time(inclusive_start_time)
    + block.with_ledger_name(ledger_name)
    + block.with_role_arn(role_arn)
    + block.with_stream_name(stream_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_exclusive_end_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"exclusive_end_time" expected to be of type "string"';
    {
      exclusive_end_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_inclusive_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"inclusive_start_time" expected to be of type "string"';
    {
      inclusive_start_time: converted,
    }
  ),
  with_ledger_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"ledger_name" expected to be of type "string"';
    {
      ledger_name: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_stream_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_name" expected to be of type "string"';
    {
      stream_name: converted,
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
  kinesis_configuration:: {
    local block = self,
    new(stream_arn):: (
      {}
      + block.with_stream_arn(stream_arn)
    ),
    with_aggregation_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"aggregation_enabled" expected to be of type "bool"';
      {
        aggregation_enabled: converted,
      }
    ),
    with_stream_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
      {
        stream_arn: converted,
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
  with_kinesis_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_kinesis_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_configuration+: converted,
    }
  ),
}
