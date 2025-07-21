{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
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
      assert std.isArray(converted) : '"message_types" expected to be of type "list"';
      {
        message_types: converted,
      }
    ),
    with_message_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"message_types" expected to be of type "list"';
      {
        message_types+: converted,
      }
    ),
    with_severities(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"severities" expected to be of type "list"';
      {
        severities: converted,
      }
    ),
    with_severities_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"severities" expected to be of type "list"';
      {
        severities+: converted,
      }
    ),
  },
  sns:: {
    local block = self,
    new():: (
      {}
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
