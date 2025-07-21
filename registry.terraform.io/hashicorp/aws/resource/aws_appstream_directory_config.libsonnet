{
  local block = self,
  new(directory_name, organizational_unit_distinguished_names):: (
    {}
    + block.with_directory_name(directory_name)
    + block.with_organizational_unit_distinguished_names(organizational_unit_distinguished_names)
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_directory_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_name" expected to be of type "string"';
    {
      directory_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_organizational_unit_distinguished_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_distinguished_names" expected to be of type "set"';
    {
      organizational_unit_distinguished_names: converted,
    }
  ),
  with_organizational_unit_distinguished_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_distinguished_names" expected to be of type "set"';
    {
      organizational_unit_distinguished_names+: converted,
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
  service_account_credentials:: {
    local block = self,
    new(account_name, account_password):: (
      {}
      + block.with_account_name(account_name)
      + block.with_account_password(account_password)
    ),
    with_account_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_name" expected to be of type "string"';
      {
        account_name: converted,
      }
    ),
    with_account_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_password" expected to be of type "string"';
      {
        account_password: converted,
      }
    ),
  },
  with_service_account_credentials(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_account_credentials: value,
    }
  ),
  with_service_account_credentials_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_account_credentials+: converted,
    }
  ),
}
