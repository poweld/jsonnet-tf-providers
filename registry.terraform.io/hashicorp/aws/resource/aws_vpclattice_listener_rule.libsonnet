{
  local block = self,
  new(listener_identifier, name, priority, service_identifier):: (
    {}
    + block.with_listener_identifier(listener_identifier)
    + block.with_name(name)
    + block.with_priority(priority)
    + block.with_service_identifier(service_identifier)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_listener_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_identifier" expected to be of type "string"';
    {
      listener_identifier: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  with_service_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_identifier" expected to be of type "string"';
    {
      service_identifier: converted,
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
  action:: {
    local block = self,
    new():: (
      {}
    ),
    fixed_response:: {
      local block = self,
      new(status_code):: (
        {}
        + block.with_status_code(status_code)
      ),
      with_status_code(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"status_code" expected to be of type "number"';
        {
          status_code: converted,
        }
      ),
    },
    forward:: {
      local block = self,
      new():: (
        {}
      ),
      target_groups:: {
        local block = self,
        new(target_group_identifier):: (
          {}
          + block.with_target_group_identifier(target_group_identifier)
        ),
        with_target_group_identifier(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_group_identifier" expected to be of type "string"';
          {
            target_group_identifier: converted,
          }
        ),
        with_weight(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"weight" expected to be of type "number"';
          {
            weight: converted,
          }
        ),
      },
      with_target_groups(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_groups: value,
        }
      ),
      with_target_groups_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_groups+: converted,
        }
      ),
    },
    with_fixed_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response: value,
      }
    ),
    with_forward(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward: value,
      }
    ),
    with_fixed_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response+: converted,
      }
    ),
    with_forward_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward+: converted,
      }
    ),
  },
  match:: {
    local block = self,
    new():: (
      {}
    ),
    http_match:: {
      local block = self,
      new():: (
        {}
      ),
      with_method(value):: (
        local converted = value;
        assert std.isString(converted) : '"method" expected to be of type "string"';
        {
          method: converted,
        }
      ),
      header_matches:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_case_sensitive(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"case_sensitive" expected to be of type "bool"';
          {
            case_sensitive: converted,
          }
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        match:: {
          local block = self,
          new():: (
            {}
          ),
          with_contains(value):: (
            local converted = value;
            assert std.isString(converted) : '"contains" expected to be of type "string"';
            {
              contains: converted,
            }
          ),
          with_exact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          with_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"prefix" expected to be of type "string"';
            {
              prefix: converted,
            }
          ),
        },
        with_match(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            match: value,
          }
        ),
        with_match_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            match+: converted,
          }
        ),
      },
      path_match:: {
        local block = self,
        new():: (
          {}
        ),
        with_case_sensitive(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"case_sensitive" expected to be of type "bool"';
          {
            case_sensitive: converted,
          }
        ),
        match:: {
          local block = self,
          new():: (
            {}
          ),
          with_exact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          with_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"prefix" expected to be of type "string"';
            {
              prefix: converted,
            }
          ),
        },
        with_match(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            match: value,
          }
        ),
        with_match_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            match+: converted,
          }
        ),
      },
      with_header_matches(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header_matches: value,
        }
      ),
      with_path_match(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          path_match: value,
        }
      ),
      with_header_matches_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header_matches+: converted,
        }
      ),
      with_path_match_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          path_match+: converted,
        }
      ),
    },
    with_http_match(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_match: value,
      }
    ),
    with_http_match_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_match+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  with_match(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      match: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  with_match_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      match+: converted,
    }
  ),
}
