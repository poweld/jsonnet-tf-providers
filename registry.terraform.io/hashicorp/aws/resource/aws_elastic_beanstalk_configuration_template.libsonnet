{
  local block = self,
  new(application, name):: (
    {}
    + block.with_application(application)
    + block.with_name(name)
  ),
  with_application(value):: (
    local converted = value;
    assert std.isString(converted) : '"application" expected to be of type "string"';
    {
      application: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_environment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
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
  with_solution_stack_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"solution_stack_name" expected to be of type "string"';
    {
      solution_stack_name: converted,
    }
  ),
  setting:: {
    local block = self,
    new(name, namespace, value):: (
      {}
      + block.with_name(name)
      + block.with_namespace(namespace)
      + block.with_value(value)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    with_resource(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource" expected to be of type "string"';
      {
        resource: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting: value,
    }
  ),
  with_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting+: converted,
    }
  ),
}
