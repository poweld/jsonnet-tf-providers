{
  local block = self,
  new(type):: (
    {}
    + block.with_type(type)
  ),
  with_cloudformation(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cloudformation" expected to be of type "list"';
    {
      cloudformation: converted,
    }
  ),
  with_cloudformation_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cloudformation" expected to be of type "list"';
    {
      cloudformation+: converted,
    }
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
  with_tags(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tags" expected to be of type "list"';
    {
      tags: converted,
    }
  ),
  with_tags_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tags" expected to be of type "list"';
    {
      tags+: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
