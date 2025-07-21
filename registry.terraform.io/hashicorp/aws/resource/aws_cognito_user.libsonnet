{
  local block = self,
  new(user_pool_id, username):: (
    {}
    + block.with_user_pool_id(user_pool_id)
    + block.with_username(username)
  ),
  with_attributes(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attributes" expected to be of type "map"';
    {
      attributes: converted,
    }
  ),
  with_client_metadata(value):: (
    local converted = value;
    assert std.isObject(converted) : '"client_metadata" expected to be of type "map"';
    {
      client_metadata: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_desired_delivery_mediums(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"desired_delivery_mediums" expected to be of type "set"';
    {
      desired_delivery_mediums: converted,
    }
  ),
  with_desired_delivery_mediums_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"desired_delivery_mediums" expected to be of type "set"';
    {
      desired_delivery_mediums+: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_force_alias_creation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_alias_creation" expected to be of type "bool"';
    {
      force_alias_creation: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_date" expected to be of type "string"';
    {
      last_modified_date: converted,
    }
  ),
  with_message_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"message_action" expected to be of type "string"';
    {
      message_action: converted,
    }
  ),
  with_mfa_setting_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"mfa_setting_list" expected to be of type "set"';
    {
      mfa_setting_list: converted,
    }
  ),
  with_mfa_setting_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"mfa_setting_list" expected to be of type "set"';
    {
      mfa_setting_list+: converted,
    }
  ),
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  with_preferred_mfa_setting(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_mfa_setting" expected to be of type "string"';
    {
      preferred_mfa_setting: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_sub(value):: (
    local converted = value;
    assert std.isString(converted) : '"sub" expected to be of type "string"';
    {
      sub: converted,
    }
  ),
  with_temporary_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"temporary_password" expected to be of type "string"';
    {
      temporary_password: converted,
    }
  ),
  with_user_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  with_validation_data(value):: (
    local converted = value;
    assert std.isObject(converted) : '"validation_data" expected to be of type "map"';
    {
      validation_data: converted,
    }
  ),
}
