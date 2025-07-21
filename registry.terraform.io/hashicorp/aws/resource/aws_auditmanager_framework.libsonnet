{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_compliance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"compliance_type" expected to be of type "string"';
    {
      compliance_type: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_framework_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"framework_type" expected to be of type "string"';
    {
      framework_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  control_sets:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    controls:: {
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
    },
    with_controls(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        controls: value,
      }
    ),
    with_controls_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        controls+: converted,
      }
    ),
  },
  with_control_sets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control_sets: value,
    }
  ),
  with_control_sets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control_sets+: converted,
    }
  ),
}
