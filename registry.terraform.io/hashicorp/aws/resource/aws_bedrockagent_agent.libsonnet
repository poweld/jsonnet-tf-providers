{
  local block = self,
  new(agent_name, agent_resource_role_arn, foundation_model):: (
    {}
    + block.with_agent_name(agent_name)
    + block.with_agent_resource_role_arn(agent_resource_role_arn)
    + block.with_foundation_model(foundation_model)
  ),
  with_agent_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_arn" expected to be of type "string"';
    {
      agent_arn: converted,
    }
  ),
  with_agent_collaboration(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_collaboration" expected to be of type "string"';
    {
      agent_collaboration: converted,
    }
  ),
  with_agent_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_id" expected to be of type "string"';
    {
      agent_id: converted,
    }
  ),
  with_agent_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_name" expected to be of type "string"';
    {
      agent_name: converted,
    }
  ),
  with_agent_resource_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_resource_role_arn" expected to be of type "string"';
    {
      agent_resource_role_arn: converted,
    }
  ),
  with_agent_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_version" expected to be of type "string"';
    {
      agent_version: converted,
    }
  ),
  with_customer_encryption_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_encryption_key_arn" expected to be of type "string"';
    {
      customer_encryption_key_arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_foundation_model(value):: (
    local converted = value;
    assert std.isString(converted) : '"foundation_model" expected to be of type "string"';
    {
      foundation_model: converted,
    }
  ),
  with_guardrail_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"guardrail_configuration" expected to be of type "list"';
    {
      guardrail_configuration: converted,
    }
  ),
  with_guardrail_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"guardrail_configuration" expected to be of type "list"';
    {
      guardrail_configuration+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_session_ttl_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_session_ttl_in_seconds" expected to be of type "number"';
    {
      idle_session_ttl_in_seconds: converted,
    }
  ),
  with_instruction(value):: (
    local converted = value;
    assert std.isString(converted) : '"instruction" expected to be of type "string"';
    {
      instruction: converted,
    }
  ),
  with_memory_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"memory_configuration" expected to be of type "list"';
    {
      memory_configuration: converted,
    }
  ),
  with_memory_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"memory_configuration" expected to be of type "list"';
    {
      memory_configuration+: converted,
    }
  ),
  with_prepare_agent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"prepare_agent" expected to be of type "bool"';
    {
      prepare_agent: converted,
    }
  ),
  with_prepared_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"prepared_at" expected to be of type "string"';
    {
      prepared_at: converted,
    }
  ),
  with_prompt_override_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"prompt_override_configuration" expected to be of type "list"';
    {
      prompt_override_configuration: converted,
    }
  ),
  with_prompt_override_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"prompt_override_configuration" expected to be of type "list"';
    {
      prompt_override_configuration+: converted,
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
  with_skip_resource_in_use_check(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_resource_in_use_check" expected to be of type "bool"';
    {
      skip_resource_in_use_check: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
