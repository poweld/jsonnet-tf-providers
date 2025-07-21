{
  local block = self,
  new():: (
    {}
  ),
  '#with_call_recovery':: 'Enable or disable voice call recovery: ACTIVE or INACTIVE. Default: `INACTIVE`',
  with_call_recovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"call_recovery" expected to be of type "string"';
    {
      call_recovery: converted,
    }
  ),
  '#with_default_auth_provider':: 'Default Authentication Provider',
  with_default_auth_provider(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_auth_provider" expected to be of type "string"';
    {
      default_auth_provider: converted,
    }
  ),
  '#with_default_included_group_id':: 'Default group ID (always included)',
  with_default_included_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_included_group_id" expected to be of type "string"';
    {
      default_included_group_id: converted,
    }
  ),
  '#with_description':: 'Default policy description',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_email_recovery':: 'Enable or disable email password recovery: ACTIVE or INACTIVE. Default: `ACTIVE`',
  with_email_recovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_recovery" expected to be of type "string"';
    {
      email_recovery: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Default policy name',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_password_auto_unlock_minutes':: 'Number of minutes before a locked account is unlocked: 0 = no limit. Default: `0`',
  with_password_auto_unlock_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_auto_unlock_minutes" expected to be of type "number"';
    {
      password_auto_unlock_minutes: converted,
    }
  ),
  '#with_password_dictionary_lookup':: 'Check Passwords Against Common Password Dictionary. Default: `false`',
  with_password_dictionary_lookup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_dictionary_lookup" expected to be of type "bool"';
    {
      password_dictionary_lookup: converted,
    }
  ),
  '#with_password_exclude_first_name':: 'User firstName attribute must be excluded from the password',
  with_password_exclude_first_name(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_exclude_first_name" expected to be of type "bool"';
    {
      password_exclude_first_name: converted,
    }
  ),
  '#with_password_exclude_last_name':: 'User lastName attribute must be excluded from the password',
  with_password_exclude_last_name(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_exclude_last_name" expected to be of type "bool"';
    {
      password_exclude_last_name: converted,
    }
  ),
  '#with_password_exclude_username':: 'If the user name must be excluded from the password. Default: `true`',
  with_password_exclude_username(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_exclude_username" expected to be of type "bool"';
    {
      password_exclude_username: converted,
    }
  ),
  '#with_password_expire_warn_days':: 'Length in days a user will be warned before password expiry: 0 = no warning. Default: `0`',
  with_password_expire_warn_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_expire_warn_days" expected to be of type "number"';
    {
      password_expire_warn_days: converted,
    }
  ),
  '#with_password_history_count':: 'Number of distinct passwords that must be created before they can be reused: 0 = none. Default: `4`',
  with_password_history_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_history_count" expected to be of type "number"';
    {
      password_history_count: converted,
    }
  ),
  '#with_password_lockout_notification_channels':: 'Notification channels to use to notify a user when their account has been locked.',
  with_password_lockout_notification_channels(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"password_lockout_notification_channels" expected to be of type "set"';
    {
      password_lockout_notification_channels: converted,
    }
  ),
  '#with_password_lockout_notification_channels_mixin':: 'Notification channels to use to notify a user when their account has been locked.',
  with_password_lockout_notification_channels_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"password_lockout_notification_channels" expected to be of type "set"';
    {
      password_lockout_notification_channels+: converted,
    }
  ),
  '#with_password_max_age_days':: 'Length in days a password is valid before expiry: 0 = no limit. Default: `0`',
  with_password_max_age_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_max_age_days" expected to be of type "number"';
    {
      password_max_age_days: converted,
    }
  ),
  '#with_password_max_lockout_attempts':: 'Number of unsuccessful login attempts allowed before lockout: 0 = no limit. Default: `10`',
  with_password_max_lockout_attempts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_max_lockout_attempts" expected to be of type "number"';
    {
      password_max_lockout_attempts: converted,
    }
  ),
  '#with_password_min_age_minutes':: 'Minimum time interval in minutes between password changes: 0 = no limit. Default: `0`',
  with_password_min_age_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_age_minutes" expected to be of type "number"';
    {
      password_min_age_minutes: converted,
    }
  ),
  '#with_password_min_length':: 'Minimum password length. Default is `8`.',
  with_password_min_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_length" expected to be of type "number"';
    {
      password_min_length: converted,
    }
  ),
  '#with_password_min_lowercase':: 'If a password must contain at least one lower case letter: 0 = no, 1 = yes. Default = 1',
  with_password_min_lowercase(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_lowercase" expected to be of type "number"';
    {
      password_min_lowercase: converted,
    }
  ),
  '#with_password_min_number':: 'If a password must contain at least one number: 0 = no, 1 = yes. Default = `1`',
  with_password_min_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_number" expected to be of type "number"';
    {
      password_min_number: converted,
    }
  ),
  '#with_password_min_symbol':: 'If a password must contain at least one symbol (!@#$%^&*): 0 = no, 1 = yes. Default = `0`',
  with_password_min_symbol(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_symbol" expected to be of type "number"';
    {
      password_min_symbol: converted,
    }
  ),
  '#with_password_min_uppercase':: 'If a password must contain at least one upper case letter: 0 = no, 1 = yes. Default = 1',
  with_password_min_uppercase(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_uppercase" expected to be of type "number"';
    {
      password_min_uppercase: converted,
    }
  ),
  '#with_password_show_lockout_failures':: 'If a user should be informed when their account is locked. Default: `false`',
  with_password_show_lockout_failures(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_show_lockout_failures" expected to be of type "bool"';
    {
      password_show_lockout_failures: converted,
    }
  ),
  '#with_priority':: 'Default policy priority',
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  '#with_question_min_length':: 'Min length of the password recovery question answer. Default: `4`',
  with_question_min_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"question_min_length" expected to be of type "number"';
    {
      question_min_length: converted,
    }
  ),
  '#with_question_recovery':: 'Enable or disable security question password recovery: ACTIVE or INACTIVE. Default: `ACTIVE`',
  with_question_recovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"question_recovery" expected to be of type "string"';
    {
      question_recovery: converted,
    }
  ),
  '#with_recovery_email_token':: 'Lifetime in minutes of the recovery email token. Default: `60`',
  with_recovery_email_token(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"recovery_email_token" expected to be of type "number"';
    {
      recovery_email_token: converted,
    }
  ),
  '#with_skip_unlock':: "When an Active Directory user is locked out of Okta, the Okta unlock operation should also attempt to unlock the user's Windows account. Default: `false`",
  with_skip_unlock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_unlock" expected to be of type "bool"';
    {
      skip_unlock: converted,
    }
  ),
  '#with_sms_recovery':: 'Enable or disable SMS password recovery: ACTIVE or INACTIVE. Default: `INACTIVE`',
  with_sms_recovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_recovery" expected to be of type "string"';
    {
      sms_recovery: converted,
    }
  ),
  '#with_status':: 'Default policy status',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
