{
  local block = self,
  new(agent_id, collaboration_instruction, collaborator_name):: (
    {}
    + block.with_agent_id(agent_id)
    + block.with_collaboration_instruction(collaboration_instruction)
    + block.with_collaborator_name(collaborator_name)
  ),
  with_agent_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_id" expected to be of type "string"';
    {
      agent_id: converted,
    }
  ),
  with_agent_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_version" expected to be of type "string"';
    {
      agent_version: converted,
    }
  ),
  with_collaboration_instruction(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaboration_instruction" expected to be of type "string"';
    {
      collaboration_instruction: converted,
    }
  ),
  with_collaborator_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaborator_id" expected to be of type "string"';
    {
      collaborator_id: converted,
    }
  ),
  with_collaborator_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaborator_name" expected to be of type "string"';
    {
      collaborator_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_prepare_agent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"prepare_agent" expected to be of type "bool"';
    {
      prepare_agent: converted,
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
  with_relay_conversation_history(value):: (
    local converted = value;
    assert std.isString(converted) : '"relay_conversation_history" expected to be of type "string"';
    {
      relay_conversation_history: converted,
    }
  ),
  agent_descriptor:: {
    local block = self,
    new(alias_arn):: (
      {}
      + block.with_alias_arn(alias_arn)
    ),
    with_alias_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"alias_arn" expected to be of type "string"';
      {
        alias_arn: converted,
      }
    ),
  },
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
  with_agent_descriptor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_descriptor: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_agent_descriptor_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_descriptor+: converted,
    }
  ),
}
