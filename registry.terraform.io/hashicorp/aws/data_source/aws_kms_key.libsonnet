{
  local block = self,
  new(key_id):: (
    {}
    + block.with_key_id(key_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_cloud_hsm_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloud_hsm_cluster_id" expected to be of type "string"';
    {
      cloud_hsm_cluster_id: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
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
  with_deletion_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"deletion_date" expected to be of type "string"';
    {
      deletion_date: converted,
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
  with_grant_tokens(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"grant_tokens" expected to be of type "list"';
    {
      grant_tokens: converted,
    }
  ),
  with_grant_tokens_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"grant_tokens" expected to be of type "list"';
    {
      grant_tokens+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  with_key_manager(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_manager" expected to be of type "string"';
    {
      key_manager: converted,
    }
  ),
  with_key_spec(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_spec" expected to be of type "string"';
    {
      key_spec: converted,
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
  with_multi_region_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"multi_region_configuration" expected to be of type "list"';
    {
      multi_region_configuration: converted,
    }
  ),
  with_multi_region_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"multi_region_configuration" expected to be of type "list"';
    {
      multi_region_configuration+: converted,
    }
  ),
  with_origin(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin" expected to be of type "string"';
    {
      origin: converted,
    }
  ),
  with_pending_deletion_window_in_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"pending_deletion_window_in_days" expected to be of type "number"';
    {
      pending_deletion_window_in_days: converted,
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
  with_valid_to(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_to" expected to be of type "string"';
    {
      valid_to: converted,
    }
  ),
  with_xks_key_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"xks_key_configuration" expected to be of type "list"';
    {
      xks_key_configuration: converted,
    }
  ),
  with_xks_key_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"xks_key_configuration" expected to be of type "list"';
    {
      xks_key_configuration+: converted,
    }
  ),
}
