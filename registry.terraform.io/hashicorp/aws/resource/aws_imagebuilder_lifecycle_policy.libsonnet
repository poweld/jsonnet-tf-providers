{
  local block = self,
  new(execution_role, name, resource_type):: (
    {}
    + block.with_execution_role(execution_role)
    + block.with_name(name)
    + block.with_resource_type(resource_type)
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
  with_execution_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role" expected to be of type "string"';
    {
      execution_role: converted,
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
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  policy_detail:: {
    local block = self,
    new():: (
      {}
    ),
    action:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      include_resources:: {
        local block = self,
        new():: (
          {}
        ),
        with_amis(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"amis" expected to be of type "bool"';
          {
            amis: converted,
          }
        ),
        with_containers(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"containers" expected to be of type "bool"';
          {
            containers: converted,
          }
        ),
        with_snapshots(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"snapshots" expected to be of type "bool"';
          {
            snapshots: converted,
          }
        ),
      },
      with_include_resources(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          include_resources: value,
        }
      ),
      with_include_resources_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          include_resources+: converted,
        }
      ),
    },
    exclusion_rules:: {
      local block = self,
      new():: (
        {}
      ),
      with_tag_map(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tag_map" expected to be of type "map"';
        {
          tag_map: converted,
        }
      ),
      amis:: {
        local block = self,
        new():: (
          {}
        ),
        with_is_public(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_public" expected to be of type "bool"';
          {
            is_public: converted,
          }
        ),
        with_regions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"regions" expected to be of type "list"';
          {
            regions: converted,
          }
        ),
        with_regions_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"regions" expected to be of type "list"';
          {
            regions+: converted,
          }
        ),
        with_shared_accounts(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"shared_accounts" expected to be of type "list"';
          {
            shared_accounts: converted,
          }
        ),
        with_shared_accounts_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"shared_accounts" expected to be of type "list"';
          {
            shared_accounts+: converted,
          }
        ),
        with_tag_map(value):: (
          local converted = value;
          assert std.isObject(converted) : '"tag_map" expected to be of type "map"';
          {
            tag_map: converted,
          }
        ),
        last_launched:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_last_launched(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            last_launched: value,
          }
        ),
        with_last_launched_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            last_launched+: converted,
          }
        ),
      },
      with_amis(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amis: value,
        }
      ),
      with_amis_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amis+: converted,
        }
      ),
    },
    filter:: {
      local block = self,
      new(type, value):: (
        {}
        + block.with_type(type)
        + block.with_value(value)
      ),
      with_retain_at_least(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"retain_at_least" expected to be of type "number"';
        {
          retain_at_least: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      with_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"value" expected to be of type "number"';
        {
          value: converted,
        }
      ),
    },
    with_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    with_exclusion_rules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusion_rules: value,
      }
    ),
    with_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    with_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    with_exclusion_rules_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusion_rules+: converted,
      }
    ),
    with_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
  },
  resource_selection:: {
    local block = self,
    new():: (
      {}
    ),
    with_tag_map(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tag_map" expected to be of type "map"';
      {
        tag_map: converted,
      }
    ),
    recipe:: {
      local block = self,
      new(name, semantic_version):: (
        {}
        + block.with_name(name)
        + block.with_semantic_version(semantic_version)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_semantic_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"semantic_version" expected to be of type "string"';
        {
          semantic_version: converted,
        }
      ),
    },
    with_recipe(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recipe: value,
      }
    ),
    with_recipe_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recipe+: converted,
      }
    ),
  },
  with_policy_detail(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_detail: value,
    }
  ),
  with_resource_selection(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_selection: value,
    }
  ),
  with_policy_detail_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_detail+: converted,
    }
  ),
  with_resource_selection_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_selection+: converted,
    }
  ),
}
