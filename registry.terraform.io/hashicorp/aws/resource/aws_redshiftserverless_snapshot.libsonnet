{
  local block = self,
  new(namespace_name, snapshot_name):: (
    {}
    + block.with_namespace_name(namespace_name)
    + block.with_snapshot_name(snapshot_name)
  ),
  with_accounts_with_provisioned_restore_access(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts_with_provisioned_restore_access" expected to be of type "set"';
    {
      accounts_with_provisioned_restore_access: converted,
    }
  ),
  with_accounts_with_provisioned_restore_access_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts_with_provisioned_restore_access" expected to be of type "set"';
    {
      accounts_with_provisioned_restore_access+: converted,
    }
  ),
  with_accounts_with_restore_access(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts_with_restore_access" expected to be of type "set"';
    {
      accounts_with_restore_access: converted,
    }
  ),
  with_accounts_with_restore_access_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts_with_restore_access" expected to be of type "set"';
    {
      accounts_with_restore_access+: converted,
    }
  ),
  with_admin_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_username" expected to be of type "string"';
    {
      admin_username: converted,
    }
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
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_namespace_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_arn" expected to be of type "string"';
    {
      namespace_arn: converted,
    }
  ),
  with_namespace_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_name" expected to be of type "string"';
    {
      namespace_name: converted,
    }
  ),
  with_owner_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account" expected to be of type "string"';
    {
      owner_account: converted,
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
  with_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period" expected to be of type "number"';
    {
      retention_period: converted,
    }
  ),
  with_snapshot_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_name" expected to be of type "string"';
    {
      snapshot_name: converted,
    }
  ),
}
