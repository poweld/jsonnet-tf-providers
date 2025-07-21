{
  local block = self,
  new(agent_id):: (
    {}
    + block.with_agent_id(agent_id)
  ),
  with_agent_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_id" expected to be of type "string"';
    {
      agent_id: converted,
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
  agent_version_summaries:: {
    local block = self,
    new():: (
      {}
    ),
    with_agent_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"agent_name" expected to be of type "string"';
      {
        agent_name: converted,
      }
    ),
    with_agent_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"agent_status" expected to be of type "string"';
      {
        agent_status: converted,
      }
    ),
    with_agent_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"agent_version" expected to be of type "string"';
      {
        agent_version: converted,
      }
    ),
    with_created_at(value):: (
      local converted = value;
      assert std.isString(converted) : '"created_at" expected to be of type "string"';
      {
        created_at: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_updated_at(value):: (
      local converted = value;
      assert std.isString(converted) : '"updated_at" expected to be of type "string"';
      {
        updated_at: converted,
      }
    ),
    guardrail_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_guardrail_identifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"guardrail_identifier" expected to be of type "string"';
        {
          guardrail_identifier: converted,
        }
      ),
      with_guardrail_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"guardrail_version" expected to be of type "string"';
        {
          guardrail_version: converted,
        }
      ),
    },
    with_guardrail_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        guardrail_configuration: value,
      }
    ),
    with_guardrail_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        guardrail_configuration+: converted,
      }
    ),
  },
  with_agent_version_summaries(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_version_summaries: value,
    }
  ),
  with_agent_version_summaries_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_version_summaries+: converted,
    }
  ),
}
