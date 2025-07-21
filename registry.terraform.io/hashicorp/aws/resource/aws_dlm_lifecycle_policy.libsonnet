{
  local block = self,
  new(description, execution_role_arn):: (
    {}
    + block.with_description(description)
    + block.with_execution_role_arn(execution_role_arn)
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
  with_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  policy_details:: {
    local block = self,
    new():: (
      {}
    ),
    with_policy_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy_type" expected to be of type "string"';
      {
        policy_type: converted,
      }
    ),
    with_resource_locations(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"resource_locations" expected to be of type "list"';
      {
        resource_locations: converted,
      }
    ),
    with_resource_locations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"resource_locations" expected to be of type "list"';
      {
        resource_locations+: converted,
      }
    ),
    with_resource_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"resource_types" expected to be of type "list"';
      {
        resource_types: converted,
      }
    ),
    with_resource_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"resource_types" expected to be of type "list"';
      {
        resource_types+: converted,
      }
    ),
    with_target_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"target_tags" expected to be of type "map"';
      {
        target_tags: converted,
      }
    ),
    action:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      cross_region_copy:: {
        local block = self,
        new(target):: (
          {}
          + block.with_target(target)
        ),
        with_target(value):: (
          local converted = value;
          assert std.isString(converted) : '"target" expected to be of type "string"';
          {
            target: converted,
          }
        ),
        encryption_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          with_cmk_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"cmk_arn" expected to be of type "string"';
            {
              cmk_arn: converted,
            }
          ),
          with_encrypted(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
            {
              encrypted: converted,
            }
          ),
        },
        retain_rule:: {
          local block = self,
          new(interval, interval_unit):: (
            {}
            + block.with_interval(interval)
            + block.with_interval_unit(interval_unit)
          ),
          with_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"interval" expected to be of type "number"';
            {
              interval: converted,
            }
          ),
          with_interval_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
            {
              interval_unit: converted,
            }
          ),
        },
        with_encryption_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            encryption_configuration: value,
          }
        ),
        with_retain_rule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retain_rule: value,
          }
        ),
        with_encryption_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            encryption_configuration+: converted,
          }
        ),
        with_retain_rule_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retain_rule+: converted,
          }
        ),
      },
      with_cross_region_copy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cross_region_copy: value,
        }
      ),
      with_cross_region_copy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cross_region_copy+: converted,
        }
      ),
    },
    event_source:: {
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
      parameters:: {
        local block = self,
        new(description_regex, event_type, snapshot_owner):: (
          {}
          + block.with_description_regex(description_regex)
          + block.with_event_type(event_type)
          + block.with_snapshot_owner(snapshot_owner)
        ),
        with_description_regex(value):: (
          local converted = value;
          assert std.isString(converted) : '"description_regex" expected to be of type "string"';
          {
            description_regex: converted,
          }
        ),
        with_event_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"event_type" expected to be of type "string"';
          {
            event_type: converted,
          }
        ),
        with_snapshot_owner(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"snapshot_owner" expected to be of type "set"';
          {
            snapshot_owner: converted,
          }
        ),
        with_snapshot_owner_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"snapshot_owner" expected to be of type "set"';
          {
            snapshot_owner+: converted,
          }
        ),
      },
      with_parameters(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameters: value,
        }
      ),
      with_parameters_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameters+: converted,
        }
      ),
    },
    parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_exclude_boot_volume(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"exclude_boot_volume" expected to be of type "bool"';
        {
          exclude_boot_volume: converted,
        }
      ),
      with_no_reboot(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"no_reboot" expected to be of type "bool"';
        {
          no_reboot: converted,
        }
      ),
    },
    schedule:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_copy_tags(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"copy_tags" expected to be of type "bool"';
        {
          copy_tags: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_tags_to_add(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags_to_add" expected to be of type "map"';
        {
          tags_to_add: converted,
        }
      ),
      with_variable_tags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"variable_tags" expected to be of type "map"';
        {
          variable_tags: converted,
        }
      ),
      create_rule:: {
        local block = self,
        new():: (
          {}
        ),
        with_cron_expression(value):: (
          local converted = value;
          assert std.isString(converted) : '"cron_expression" expected to be of type "string"';
          {
            cron_expression: converted,
          }
        ),
        with_interval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval" expected to be of type "number"';
          {
            interval: converted,
          }
        ),
        with_interval_unit(value):: (
          local converted = value;
          assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
          {
            interval_unit: converted,
          }
        ),
        with_location(value):: (
          local converted = value;
          assert std.isString(converted) : '"location" expected to be of type "string"';
          {
            location: converted,
          }
        ),
        with_times(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"times" expected to be of type "list"';
          {
            times: converted,
          }
        ),
        with_times_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"times" expected to be of type "list"';
          {
            times+: converted,
          }
        ),
      },
      cross_region_copy_rule:: {
        local block = self,
        new(encrypted, target):: (
          {}
          + block.with_encrypted(encrypted)
          + block.with_target(target)
        ),
        with_cmk_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"cmk_arn" expected to be of type "string"';
          {
            cmk_arn: converted,
          }
        ),
        with_copy_tags(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"copy_tags" expected to be of type "bool"';
          {
            copy_tags: converted,
          }
        ),
        with_encrypted(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
          {
            encrypted: converted,
          }
        ),
        with_target(value):: (
          local converted = value;
          assert std.isString(converted) : '"target" expected to be of type "string"';
          {
            target: converted,
          }
        ),
        deprecate_rule:: {
          local block = self,
          new(interval, interval_unit):: (
            {}
            + block.with_interval(interval)
            + block.with_interval_unit(interval_unit)
          ),
          with_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"interval" expected to be of type "number"';
            {
              interval: converted,
            }
          ),
          with_interval_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
            {
              interval_unit: converted,
            }
          ),
        },
        retain_rule:: {
          local block = self,
          new(interval, interval_unit):: (
            {}
            + block.with_interval(interval)
            + block.with_interval_unit(interval_unit)
          ),
          with_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"interval" expected to be of type "number"';
            {
              interval: converted,
            }
          ),
          with_interval_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
            {
              interval_unit: converted,
            }
          ),
        },
        with_deprecate_rule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            deprecate_rule: value,
          }
        ),
        with_retain_rule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retain_rule: value,
          }
        ),
        with_deprecate_rule_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            deprecate_rule+: converted,
          }
        ),
        with_retain_rule_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retain_rule+: converted,
          }
        ),
      },
      deprecate_rule:: {
        local block = self,
        new():: (
          {}
        ),
        with_count(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"count" expected to be of type "number"';
          {
            count: converted,
          }
        ),
        with_interval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval" expected to be of type "number"';
          {
            interval: converted,
          }
        ),
        with_interval_unit(value):: (
          local converted = value;
          assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
          {
            interval_unit: converted,
          }
        ),
      },
      fast_restore_rule:: {
        local block = self,
        new(availability_zones):: (
          {}
          + block.with_availability_zones(availability_zones)
        ),
        with_availability_zones(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
          {
            availability_zones: converted,
          }
        ),
        with_availability_zones_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
          {
            availability_zones+: converted,
          }
        ),
        with_count(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"count" expected to be of type "number"';
          {
            count: converted,
          }
        ),
        with_interval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval" expected to be of type "number"';
          {
            interval: converted,
          }
        ),
        with_interval_unit(value):: (
          local converted = value;
          assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
          {
            interval_unit: converted,
          }
        ),
      },
      retain_rule:: {
        local block = self,
        new():: (
          {}
        ),
        with_count(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"count" expected to be of type "number"';
          {
            count: converted,
          }
        ),
        with_interval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval" expected to be of type "number"';
          {
            interval: converted,
          }
        ),
        with_interval_unit(value):: (
          local converted = value;
          assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
          {
            interval_unit: converted,
          }
        ),
      },
      share_rule:: {
        local block = self,
        new(target_accounts):: (
          {}
          + block.with_target_accounts(target_accounts)
        ),
        with_target_accounts(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_accounts" expected to be of type "set"';
          {
            target_accounts: converted,
          }
        ),
        with_target_accounts_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_accounts" expected to be of type "set"';
          {
            target_accounts+: converted,
          }
        ),
        with_unshare_interval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"unshare_interval" expected to be of type "number"';
          {
            unshare_interval: converted,
          }
        ),
        with_unshare_interval_unit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unshare_interval_unit" expected to be of type "string"';
          {
            unshare_interval_unit: converted,
          }
        ),
      },
      with_create_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          create_rule: value,
        }
      ),
      with_cross_region_copy_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cross_region_copy_rule: value,
        }
      ),
      with_deprecate_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          deprecate_rule: value,
        }
      ),
      with_fast_restore_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          fast_restore_rule: value,
        }
      ),
      with_retain_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retain_rule: value,
        }
      ),
      with_share_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          share_rule: value,
        }
      ),
      with_create_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          create_rule+: converted,
        }
      ),
      with_cross_region_copy_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cross_region_copy_rule+: converted,
        }
      ),
      with_deprecate_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          deprecate_rule+: converted,
        }
      ),
      with_fast_restore_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          fast_restore_rule+: converted,
        }
      ),
      with_retain_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retain_rule+: converted,
        }
      ),
      with_share_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          share_rule+: converted,
        }
      ),
    },
    with_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    with_event_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        event_source: value,
      }
    ),
    with_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameters: value,
      }
    ),
    with_schedule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule: value,
      }
    ),
    with_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    with_event_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        event_source+: converted,
      }
    ),
    with_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameters+: converted,
      }
    ),
    with_schedule_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule+: converted,
      }
    ),
  },
  with_policy_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_details: value,
    }
  ),
  with_policy_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_details+: converted,
    }
  ),
}
