{
  local block = self,
  new(auto_enable):: (
    {}
    + block.with_auto_enable(auto_enable)
  ),
  with_auto_enable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_enable" expected to be of type "bool"';
    {
      auto_enable: converted,
    }
  ),
  with_auto_enable_standards(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_enable_standards" expected to be of type "string"';
    {
      auto_enable_standards: converted,
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
  organization_configuration:: {
    local block = self,
    new(configuration_type):: (
      {}
      + block.with_configuration_type(configuration_type)
    ),
    with_configuration_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"configuration_type" expected to be of type "string"';
      {
        configuration_type: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_organization_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      organization_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_organization_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      organization_configuration+: converted,
    }
  ),
}
