{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_agent_orchestration_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"agent_orchestration_config" expected to be of type "list"';
    {
      agent_orchestration_config: converted,
    }
  ),
  with_agent_orchestration_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"agent_orchestration_config" expected to be of type "list"';
    {
      agent_orchestration_config+: converted,
    }
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
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
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
  with_profiling_status(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"profiling_status" expected to be of type "list"';
    {
      profiling_status: converted,
    }
  ),
  with_profiling_status_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"profiling_status" expected to be of type "list"';
    {
      profiling_status+: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
}
