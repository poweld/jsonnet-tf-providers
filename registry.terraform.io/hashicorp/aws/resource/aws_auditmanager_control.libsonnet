{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
  control_mapping_sources:: {
    local block = self,
    new(source_name, source_set_up_option, source_type):: (
      {}
      + block.with_source_name(source_name)
      + block.with_source_set_up_option(source_set_up_option)
      + block.with_source_type(source_type)
    ),
    with_source_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_description" expected to be of type "string"';
      {
        source_description: converted,
      }
    ),
    with_source_frequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_frequency" expected to be of type "string"';
      {
        source_frequency: converted,
      }
    ),
    with_source_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_id" expected to be of type "string"';
      {
        source_id: converted,
      }
    ),
    with_source_keyword(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"source_keyword" expected to be of type "list"';
      {
        source_keyword: converted,
      }
    ),
    with_source_keyword_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"source_keyword" expected to be of type "list"';
      {
        source_keyword+: converted,
      }
    ),
    with_source_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_name" expected to be of type "string"';
      {
        source_name: converted,
      }
    ),
    with_source_set_up_option(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_set_up_option" expected to be of type "string"';
      {
        source_set_up_option: converted,
      }
    ),
    with_source_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_type" expected to be of type "string"';
      {
        source_type: converted,
      }
    ),
    with_troubleshooting_text(value):: (
      local converted = value;
      assert std.isString(converted) : '"troubleshooting_text" expected to be of type "string"';
      {
        troubleshooting_text: converted,
      }
    ),
  },
  with_control_mapping_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control_mapping_sources: value,
    }
  ),
  with_control_mapping_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control_mapping_sources+: converted,
    }
  ),
}
