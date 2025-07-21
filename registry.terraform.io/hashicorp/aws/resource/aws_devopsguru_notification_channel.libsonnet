{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  filters:: {
    local block = self,
    new():: (
      {}
    ),
    with_message_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"message_types" expected to be of type "set"';
      {
        message_types: converted,
      }
    ),
    with_message_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"message_types" expected to be of type "set"';
      {
        message_types+: converted,
      }
    ),
    with_severities(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"severities" expected to be of type "set"';
      {
        severities: converted,
      }
    ),
    with_severities_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"severities" expected to be of type "set"';
      {
        severities+: converted,
      }
    ),
  },
  sns:: {
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
  with_filters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  with_sns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns: value,
    }
  ),
  with_filters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
  with_sns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns+: converted,
    }
  ),
}
