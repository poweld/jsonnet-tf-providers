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
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  advanced_backup_setting:: {
    local block = self,
    new(backup_options, resource_type):: (
      {}
      + block.with_backup_options(backup_options)
      + block.with_resource_type(resource_type)
    ),
    with_backup_options(value):: (
      local converted = value;
      assert std.isObject(converted) : '"backup_options" expected to be of type "map"';
      {
        backup_options: converted,
      }
    ),
    with_resource_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
  },
  rule:: {
    local block = self,
    new(rule_name, target_vault_name):: (
      {}
      + block.with_rule_name(rule_name)
      + block.with_target_vault_name(target_vault_name)
    ),
    with_completion_window(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"completion_window" expected to be of type "number"';
      {
        completion_window: converted,
      }
    ),
    with_enable_continuous_backup(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_continuous_backup" expected to be of type "bool"';
      {
        enable_continuous_backup: converted,
      }
    ),
    with_recovery_point_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"recovery_point_tags" expected to be of type "map"';
      {
        recovery_point_tags: converted,
      }
    ),
    with_rule_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"rule_name" expected to be of type "string"';
      {
        rule_name: converted,
      }
    ),
    with_schedule(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule" expected to be of type "string"';
      {
        schedule: converted,
      }
    ),
    with_schedule_expression_timezone(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression_timezone" expected to be of type "string"';
      {
        schedule_expression_timezone: converted,
      }
    ),
    with_start_window(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"start_window" expected to be of type "number"';
      {
        start_window: converted,
      }
    ),
    with_target_vault_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_vault_name" expected to be of type "string"';
      {
        target_vault_name: converted,
      }
    ),
    copy_action:: {
      local block = self,
      new(destination_vault_arn):: (
        {}
        + block.with_destination_vault_arn(destination_vault_arn)
      ),
      with_destination_vault_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_vault_arn" expected to be of type "string"';
        {
          destination_vault_arn: converted,
        }
      ),
      lifecycle:: {
        local block = self,
        new():: (
          {}
        ),
        with_cold_storage_after(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"cold_storage_after" expected to be of type "number"';
          {
            cold_storage_after: converted,
          }
        ),
        with_delete_after(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"delete_after" expected to be of type "number"';
          {
            delete_after: converted,
          }
        ),
        with_opt_in_to_archive_for_supported_resources(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"opt_in_to_archive_for_supported_resources" expected to be of type "bool"';
          {
            opt_in_to_archive_for_supported_resources: converted,
          }
        ),
      },
      with_lifecycle(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lifecycle: value,
        }
      ),
      with_lifecycle_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lifecycle+: converted,
        }
      ),
    },
    lifecycle:: {
      local block = self,
      new():: (
        {}
      ),
      with_cold_storage_after(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"cold_storage_after" expected to be of type "number"';
        {
          cold_storage_after: converted,
        }
      ),
      with_delete_after(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"delete_after" expected to be of type "number"';
        {
          delete_after: converted,
        }
      ),
      with_opt_in_to_archive_for_supported_resources(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"opt_in_to_archive_for_supported_resources" expected to be of type "bool"';
        {
          opt_in_to_archive_for_supported_resources: converted,
        }
      ),
    },
    with_copy_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_action: value,
      }
    ),
    with_lifecycle(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle: value,
      }
    ),
    with_copy_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_action+: converted,
      }
    ),
    with_lifecycle_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle+: converted,
      }
    ),
  },
  with_advanced_backup_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_backup_setting: value,
    }
  ),
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  with_advanced_backup_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_backup_setting+: converted,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
