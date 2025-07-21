{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_action_plan_instructions(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_plan_instructions" expected to be of type "string"';
    {
      action_plan_instructions: converted,
    }
  ),
  with_action_plan_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_plan_title" expected to be of type "string"';
    {
      action_plan_title: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_control_mapping_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"control_mapping_sources" expected to be of type "list"';
    {
      control_mapping_sources: converted,
    }
  ),
  with_control_mapping_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"control_mapping_sources" expected to be of type "list"';
    {
      control_mapping_sources+: converted,
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
  with_testing_information(value):: (
    local converted = value;
    assert std.isString(converted) : '"testing_information" expected to be of type "string"';
    {
      testing_information: converted,
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
