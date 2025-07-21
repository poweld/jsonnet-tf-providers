{
  local block = self,
  new(type):: (
    {}
    + block.with_type(type)
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  cloudformation:: {
    local block = self,
    new(stack_names):: (
      {}
      + block.with_stack_names(stack_names)
    ),
    with_stack_names(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"stack_names" expected to be of type "list"';
      {
        stack_names: converted,
      }
    ),
    with_stack_names_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"stack_names" expected to be of type "list"';
      {
        stack_names+: converted,
      }
    ),
  },
  tags:: {
    local block = self,
    new(app_boundary_key, tag_values):: (
      {}
      + block.with_app_boundary_key(app_boundary_key)
      + block.with_tag_values(tag_values)
    ),
    with_app_boundary_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"app_boundary_key" expected to be of type "string"';
      {
        app_boundary_key: converted,
      }
    ),
    with_tag_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tag_values" expected to be of type "list"';
      {
        tag_values: converted,
      }
    ),
    with_tag_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tag_values" expected to be of type "list"';
      {
        tag_values+: converted,
      }
    ),
  },
  with_cloudformation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudformation: value,
    }
  ),
  with_tags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tags: value,
    }
  ),
  with_cloudformation_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudformation+: converted,
    }
  ),
  with_tags_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tags+: converted,
    }
  ),
}
