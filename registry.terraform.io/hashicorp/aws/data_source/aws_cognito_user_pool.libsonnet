{
  local block = self,
  new(user_pool_id):: (
    {}
    + block.with_user_pool_id(user_pool_id)
  ),
  with_account_recovery_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"account_recovery_setting" expected to be of type "list"';
    {
      account_recovery_setting: converted,
    }
  ),
  with_account_recovery_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"account_recovery_setting" expected to be of type "list"';
    {
      account_recovery_setting+: converted,
    }
  ),
  with_admin_create_user_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_create_user_config" expected to be of type "list"';
    {
      admin_create_user_config: converted,
    }
  ),
  with_admin_create_user_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_create_user_config" expected to be of type "list"';
    {
      admin_create_user_config+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_verified_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"auto_verified_attributes" expected to be of type "list"';
    {
      auto_verified_attributes: converted,
    }
  ),
  with_auto_verified_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"auto_verified_attributes" expected to be of type "list"';
    {
      auto_verified_attributes+: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_custom_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_domain" expected to be of type "string"';
    {
      custom_domain: converted,
    }
  ),
  with_deletion_protection(value):: (
    local converted = value;
    assert std.isString(converted) : '"deletion_protection" expected to be of type "string"';
    {
      deletion_protection: converted,
    }
  ),
  with_device_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"device_configuration" expected to be of type "list"';
    {
      device_configuration: converted,
    }
  ),
  with_device_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"device_configuration" expected to be of type "list"';
    {
      device_configuration+: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_email_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"email_configuration" expected to be of type "list"';
    {
      email_configuration: converted,
    }
  ),
  with_email_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"email_configuration" expected to be of type "list"';
    {
      email_configuration+: converted,
    }
  ),
  with_estimated_number_of_users(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"estimated_number_of_users" expected to be of type "number"';
    {
      estimated_number_of_users: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_lambda_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"lambda_config" expected to be of type "list"';
    {
      lambda_config: converted,
    }
  ),
  with_lambda_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"lambda_config" expected to be of type "list"';
    {
      lambda_config+: converted,
    }
  ),
  with_last_modified_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_date" expected to be of type "string"';
    {
      last_modified_date: converted,
    }
  ),
  with_mfa_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"mfa_configuration" expected to be of type "string"';
    {
      mfa_configuration: converted,
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
  with_schema_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"schema_attributes" expected to be of type "list"';
    {
      schema_attributes: converted,
    }
  ),
  with_schema_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"schema_attributes" expected to be of type "list"';
    {
      schema_attributes+: converted,
    }
  ),
  with_sms_authentication_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_authentication_message" expected to be of type "string"';
    {
      sms_authentication_message: converted,
    }
  ),
  with_sms_configuration_failure(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_configuration_failure" expected to be of type "string"';
    {
      sms_configuration_failure: converted,
    }
  ),
  with_sms_verification_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_verification_message" expected to be of type "string"';
    {
      sms_verification_message: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_user_pool_add_ons(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_pool_add_ons" expected to be of type "list"';
    {
      user_pool_add_ons: converted,
    }
  ),
  with_user_pool_add_ons_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_pool_add_ons" expected to be of type "list"';
    {
      user_pool_add_ons+: converted,
    }
  ),
  with_user_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  with_user_pool_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"user_pool_tags" expected to be of type "map"';
    {
      user_pool_tags: converted,
    }
  ),
  with_username_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"username_attributes" expected to be of type "list"';
    {
      username_attributes: converted,
    }
  ),
  with_username_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"username_attributes" expected to be of type "list"';
    {
      username_attributes+: converted,
    }
  ),
}
