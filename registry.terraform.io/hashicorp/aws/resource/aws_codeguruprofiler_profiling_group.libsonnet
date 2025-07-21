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
  with_compute_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_platform" expected to be of type "string"';
    {
      compute_platform: converted,
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
  agent_orchestration_config:: {
    local block = self,
    new(profiling_enabled):: (
      {}
      + block.with_profiling_enabled(profiling_enabled)
    ),
    with_profiling_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"profiling_enabled" expected to be of type "bool"';
      {
        profiling_enabled: converted,
      }
    ),
  },
  with_agent_orchestration_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_orchestration_config: value,
    }
  ),
  with_agent_orchestration_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_orchestration_config+: converted,
    }
  ),
}
