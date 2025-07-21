{
  local block = self,
  new(scope):: (
    {}
    + block.with_scope(scope)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_lock_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"lock_token" expected to be of type "string"';
    {
      lock_token: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  with_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
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
  regular_expression:: {
    local block = self,
    new(regex_string):: (
      {}
      + block.with_regex_string(regex_string)
    ),
    with_regex_string(value):: (
      local converted = value;
      assert std.isString(converted) : '"regex_string" expected to be of type "string"';
      {
        regex_string: converted,
      }
    ),
  },
  with_regular_expression(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regular_expression: value,
    }
  ),
  with_regular_expression_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regular_expression+: converted,
    }
  ),
}
