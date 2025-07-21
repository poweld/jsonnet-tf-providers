{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"json" expected to be of type "string"';
    {
      json: converted,
    }
  ),
  with_minified_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"minified_json" expected to be of type "string"';
    {
      minified_json: converted,
    }
  ),
  with_override_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"override_json" expected to be of type "string"';
    {
      override_json: converted,
    }
  ),
  with_override_policy_documents(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"override_policy_documents" expected to be of type "list"';
    {
      override_policy_documents: converted,
    }
  ),
  with_override_policy_documents_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"override_policy_documents" expected to be of type "list"';
    {
      override_policy_documents+: converted,
    }
  ),
  with_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  with_source_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_json" expected to be of type "string"';
    {
      source_json: converted,
    }
  ),
  with_source_policy_documents(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source_policy_documents" expected to be of type "list"';
    {
      source_policy_documents: converted,
    }
  ),
  with_source_policy_documents_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source_policy_documents" expected to be of type "list"';
    {
      source_policy_documents+: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  statement:: {
    local block = self,
    new():: (
      {}
    ),
    with_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions: converted,
      }
    ),
    with_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions+: converted,
      }
    ),
    with_effect(value):: (
      local converted = value;
      assert std.isString(converted) : '"effect" expected to be of type "string"';
      {
        effect: converted,
      }
    ),
    with_not_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_actions" expected to be of type "set"';
      {
        not_actions: converted,
      }
    ),
    with_not_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_actions" expected to be of type "set"';
      {
        not_actions+: converted,
      }
    ),
    with_not_resources(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_resources" expected to be of type "set"';
      {
        not_resources: converted,
      }
    ),
    with_not_resources_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_resources" expected to be of type "set"';
      {
        not_resources+: converted,
      }
    ),
    with_resources(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
      {
        resources: converted,
      }
    ),
    with_resources_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
      {
        resources+: converted,
      }
    ),
    with_sid(value):: (
      local converted = value;
      assert std.isString(converted) : '"sid" expected to be of type "string"';
      {
        sid: converted,
      }
    ),
    condition:: {
      local block = self,
      new(test, values, variable):: (
        {}
        + block.with_test(test)
        + block.with_values(values)
        + block.with_variable(variable)
      ),
      with_test(value):: (
        local converted = value;
        assert std.isString(converted) : '"test" expected to be of type "string"';
        {
          test: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values+: converted,
        }
      ),
      with_variable(value):: (
        local converted = value;
        assert std.isString(converted) : '"variable" expected to be of type "string"';
        {
          variable: converted,
        }
      ),
    },
    not_principals:: {
      local block = self,
      new(identifiers, type):: (
        {}
        + block.with_identifiers(identifiers)
        + block.with_type(type)
      ),
      with_identifiers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identifiers" expected to be of type "set"';
        {
          identifiers: converted,
        }
      ),
      with_identifiers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identifiers" expected to be of type "set"';
        {
          identifiers+: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    principals:: {
      local block = self,
      new(identifiers, type):: (
        {}
        + block.with_identifiers(identifiers)
        + block.with_type(type)
      ),
      with_identifiers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identifiers" expected to be of type "set"';
        {
          identifiers: converted,
        }
      ),
      with_identifiers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identifiers" expected to be of type "set"';
        {
          identifiers+: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_condition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        condition: value,
      }
    ),
    with_not_principals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        not_principals: value,
      }
    ),
    with_principals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        principals: value,
      }
    ),
    with_condition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        condition+: converted,
      }
    ),
    with_not_principals_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        not_principals+: converted,
      }
    ),
    with_principals_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        principals+: converted,
      }
    ),
  },
  with_statement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statement: value,
    }
  ),
  with_statement_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statement+: converted,
    }
  ),
}
