{
  local block = self,
  new(configuration_set_name, matching_types, name):: (
    {}
    + block.with_configuration_set_name(configuration_set_name)
    + block.with_matching_types(matching_types)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_configuration_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_matching_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"matching_types" expected to be of type "set"';
    {
      matching_types: converted,
    }
  ),
  with_matching_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"matching_types" expected to be of type "set"';
    {
      matching_types+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  cloudwatch_destination:: {
    local block = self,
    new(default_value, dimension_name, value_source):: (
      {}
      + block.with_default_value(default_value)
      + block.with_dimension_name(dimension_name)
      + block.with_value_source(value_source)
    ),
    with_default_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_value" expected to be of type "string"';
      {
        default_value: converted,
      }
    ),
    with_dimension_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"dimension_name" expected to be of type "string"';
      {
        dimension_name: converted,
      }
    ),
    with_value_source(value):: (
      local converted = value;
      assert std.isString(converted) : '"value_source" expected to be of type "string"';
      {
        value_source: converted,
      }
    ),
  },
  kinesis_destination:: {
    local block = self,
    new(role_arn, stream_arn):: (
      {}
      + block.with_role_arn(role_arn)
      + block.with_stream_arn(stream_arn)
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
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
  sns_destination:: {
    local block = self,
    new(topic_arn):: (
      {}
      + block.with_topic_arn(topic_arn)
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  with_cloudwatch_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_destination: value,
    }
  ),
  with_kinesis_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_destination: value,
    }
  ),
  with_sns_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns_destination: value,
    }
  ),
  with_cloudwatch_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_destination+: converted,
    }
  ),
  with_kinesis_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_destination+: converted,
    }
  ),
  with_sns_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns_destination+: converted,
    }
  ),
}
