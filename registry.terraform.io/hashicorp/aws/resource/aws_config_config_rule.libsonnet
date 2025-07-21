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
  with_input_parameters(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_parameters" expected to be of type "string"';
    {
      input_parameters: converted,
    }
  ),
  with_maximum_execution_frequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"maximum_execution_frequency" expected to be of type "string"';
    {
      maximum_execution_frequency: converted,
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
  with_rule_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_id" expected to be of type "string"';
    {
      rule_id: converted,
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
  evaluation_mode:: {
    local block = self,
    new():: (
      {}
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  scope:: {
    local block = self,
    new():: (
      {}
    ),
    with_compliance_resource_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"compliance_resource_id" expected to be of type "string"';
      {
        compliance_resource_id: converted,
      }
    ),
    with_compliance_resource_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compliance_resource_types" expected to be of type "set"';
      {
        compliance_resource_types: converted,
      }
    ),
    with_compliance_resource_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compliance_resource_types" expected to be of type "set"';
      {
        compliance_resource_types+: converted,
      }
    ),
    with_tag_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"tag_key" expected to be of type "string"';
      {
        tag_key: converted,
      }
    ),
    with_tag_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"tag_value" expected to be of type "string"';
      {
        tag_value: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new(owner):: (
      {}
      + block.with_owner(owner)
    ),
    with_owner(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner" expected to be of type "string"';
      {
        owner: converted,
      }
    ),
    with_source_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_identifier" expected to be of type "string"';
      {
        source_identifier: converted,
      }
    ),
    custom_policy_details:: {
      local block = self,
      new(policy_runtime, policy_text):: (
        {}
        + block.with_policy_runtime(policy_runtime)
        + block.with_policy_text(policy_text)
      ),
      with_enable_debug_log_delivery(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_debug_log_delivery" expected to be of type "bool"';
        {
          enable_debug_log_delivery: converted,
        }
      ),
      with_policy_runtime(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_runtime" expected to be of type "string"';
        {
          policy_runtime: converted,
        }
      ),
      with_policy_text(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_text" expected to be of type "string"';
        {
          policy_text: converted,
        }
      ),
    },
    source_detail:: {
      local block = self,
      new():: (
        {}
      ),
      with_event_source(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_source" expected to be of type "string"';
        {
          event_source: converted,
        }
      ),
      with_maximum_execution_frequency(value):: (
        local converted = value;
        assert std.isString(converted) : '"maximum_execution_frequency" expected to be of type "string"';
        {
          maximum_execution_frequency: converted,
        }
      ),
      with_message_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_type" expected to be of type "string"';
        {
          message_type: converted,
        }
      ),
    },
    with_custom_policy_details(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_policy_details: value,
      }
    ),
    with_source_detail(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_detail: value,
      }
    ),
    with_custom_policy_details_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_policy_details+: converted,
      }
    ),
    with_source_detail_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_detail+: converted,
      }
    ),
  },
  with_evaluation_mode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      evaluation_mode: value,
    }
  ),
  with_scope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  with_evaluation_mode_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      evaluation_mode+: converted,
    }
  ),
  with_scope_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}
