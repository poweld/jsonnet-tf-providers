{
  local block = self,
  new():: (
    {}
  ),
  with_accounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"accounts" expected to be of type "list"';
    {
      accounts: converted,
    }
  ),
  with_accounts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"accounts" expected to be of type "list"';
    {
      accounts+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_service_access_principals(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aws_service_access_principals" expected to be of type "set"';
    {
      aws_service_access_principals: converted,
    }
  ),
  with_aws_service_access_principals_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aws_service_access_principals" expected to be of type "set"';
    {
      aws_service_access_principals+: converted,
    }
  ),
  with_enabled_policy_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_policy_types" expected to be of type "set"';
    {
      enabled_policy_types: converted,
    }
  ),
  with_enabled_policy_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_policy_types" expected to be of type "set"';
    {
      enabled_policy_types+: converted,
    }
  ),
  with_feature_set(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_set" expected to be of type "string"';
    {
      feature_set: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_master_account_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_account_arn" expected to be of type "string"';
    {
      master_account_arn: converted,
    }
  ),
  with_master_account_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_account_email" expected to be of type "string"';
    {
      master_account_email: converted,
    }
  ),
  with_master_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_account_id" expected to be of type "string"';
    {
      master_account_id: converted,
    }
  ),
  with_master_account_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_account_name" expected to be of type "string"';
    {
      master_account_name: converted,
    }
  ),
  with_non_master_accounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"non_master_accounts" expected to be of type "list"';
    {
      non_master_accounts: converted,
    }
  ),
  with_non_master_accounts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"non_master_accounts" expected to be of type "list"';
    {
      non_master_accounts+: converted,
    }
  ),
  with_roots(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"roots" expected to be of type "list"';
    {
      roots: converted,
    }
  ),
  with_roots_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"roots" expected to be of type "list"';
    {
      roots+: converted,
    }
  ),
}
