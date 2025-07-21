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
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_expiration_model(value):: (
    local converted = value;
    assert std.isString(converted) : '"expiration_model" expected to be of type "string"';
    {
      expiration_model: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_material_base64(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_material_base64" expected to be of type "string"';
    {
      key_material_base64: converted,
    }
  ),
  with_key_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_state" expected to be of type "string"';
    {
      key_state: converted,
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
  with_valid_to(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_to" expected to be of type "string"';
    {
      valid_to: converted,
    }
  ),
}
