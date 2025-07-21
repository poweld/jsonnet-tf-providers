{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bypass_policy_lockout_safety_check(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bypass_policy_lockout_safety_check" expected to be of type "bool"';
    {
      bypass_policy_lockout_safety_check: converted,
    }
  ),
  with_custom_key_store_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_id" expected to be of type "string"';
    {
      custom_key_store_id: converted,
    }
  ),
  with_customer_master_key_spec(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_master_key_spec" expected to be of type "string"';
    {
      customer_master_key_spec: converted,
    }
  ),
  with_deletion_window_in_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deletion_window_in_days" expected to be of type "number"';
    {
      deletion_window_in_days: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enable_key_rotation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_key_rotation" expected to be of type "bool"';
    {
      enable_key_rotation: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_is_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_enabled" expected to be of type "bool"';
    {
      is_enabled: converted,
    }
  ),
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  with_key_usage(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_usage" expected to be of type "string"';
    {
      key_usage: converted,
    }
  ),
  with_multi_region(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_region" expected to be of type "bool"';
    {
      multi_region: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  with_rotation_period_in_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rotation_period_in_days" expected to be of type "number"';
    {
      rotation_period_in_days: converted,
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
  with_xks_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_key_id" expected to be of type "string"';
    {
      xks_key_id: converted,
    }
  ),
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
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
