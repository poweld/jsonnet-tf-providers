{
  local block = self,
  new(action_type, approval_model, budget_name, execution_role_arn, notification_type):: (
    {}
    + block.with_action_type(action_type)
    + block.with_approval_model(approval_model)
    + block.with_budget_name(budget_name)
    + block.with_execution_role_arn(execution_role_arn)
    + block.with_notification_type(notification_type)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_action_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_id" expected to be of type "string"';
    {
      action_id: converted,
    }
  ),
  with_action_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_type" expected to be of type "string"';
    {
      action_type: converted,
    }
  ),
  with_approval_model(value):: (
    local converted = value;
    assert std.isString(converted) : '"approval_model" expected to be of type "string"';
    {
      approval_model: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_budget_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"budget_name" expected to be of type "string"';
    {
      budget_name: converted,
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
  with_notification_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_type" expected to be of type "string"';
    {
      notification_type: converted,
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
  action_threshold:: {
    local block = self,
    new(action_threshold_type, action_threshold_value):: (
      {}
      + block.with_action_threshold_type(action_threshold_type)
      + block.with_action_threshold_value(action_threshold_value)
    ),
    with_action_threshold_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"action_threshold_type" expected to be of type "string"';
      {
        action_threshold_type: converted,
      }
    ),
    with_action_threshold_value(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"action_threshold_value" expected to be of type "number"';
      {
        action_threshold_value: converted,
      }
    ),
  },
  definition:: {
    local block = self,
    new():: (
      {}
    ),
    iam_action_definition:: {
      local block = self,
      new(policy_arn):: (
        {}
        + block.with_policy_arn(policy_arn)
      ),
      with_groups(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
        {
          groups: converted,
        }
      ),
      with_groups_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
        {
          groups+: converted,
        }
      ),
      with_policy_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_arn" expected to be of type "string"';
        {
          policy_arn: converted,
        }
      ),
      with_roles(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"roles" expected to be of type "set"';
        {
          roles: converted,
        }
      ),
      with_roles_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"roles" expected to be of type "set"';
        {
          roles+: converted,
        }
      ),
      with_users(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
        {
          users: converted,
        }
      ),
      with_users_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
        {
          users+: converted,
        }
      ),
    },
    scp_action_definition:: {
      local block = self,
      new(policy_id, target_ids):: (
        {}
        + block.with_policy_id(policy_id)
        + block.with_target_ids(target_ids)
      ),
      with_policy_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_id" expected to be of type "string"';
        {
          policy_id: converted,
        }
      ),
      with_target_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_ids" expected to be of type "set"';
        {
          target_ids: converted,
        }
      ),
      with_target_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_ids" expected to be of type "set"';
        {
          target_ids+: converted,
        }
      ),
    },
    ssm_action_definition:: {
      local block = self,
      new(action_sub_type, instance_ids, region):: (
        {}
        + block.with_action_sub_type(action_sub_type)
        + block.with_instance_ids(instance_ids)
        + block.with_region(region)
      ),
      with_action_sub_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"action_sub_type" expected to be of type "string"';
        {
          action_sub_type: converted,
        }
      ),
      with_instance_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_ids" expected to be of type "set"';
        {
          instance_ids: converted,
        }
      ),
      with_instance_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_ids" expected to be of type "set"';
        {
          instance_ids+: converted,
        }
      ),
      with_region(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
    },
    with_iam_action_definition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iam_action_definition: value,
      }
    ),
    with_scp_action_definition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scp_action_definition: value,
      }
    ),
    with_ssm_action_definition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_action_definition: value,
      }
    ),
    with_iam_action_definition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iam_action_definition+: converted,
      }
    ),
    with_scp_action_definition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scp_action_definition+: converted,
      }
    ),
    with_ssm_action_definition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_action_definition+: converted,
      }
    ),
  },
  subscriber:: {
    local block = self,
    new(address, subscription_type):: (
      {}
      + block.with_address(address)
      + block.with_subscription_type(subscription_type)
    ),
    with_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"address" expected to be of type "string"';
      {
        address: converted,
      }
    ),
    with_subscription_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"subscription_type" expected to be of type "string"';
      {
        subscription_type: converted,
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
  with_action_threshold(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_threshold: value,
    }
  ),
  with_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition: value,
    }
  ),
  with_subscriber(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_action_threshold_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_threshold+: converted,
    }
  ),
  with_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition+: converted,
    }
  ),
  with_subscriber_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber+: converted,
    }
  ),
}
