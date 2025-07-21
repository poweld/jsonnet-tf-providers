{
  local block = self,
  new(directory_id):: (
    {}
    + block.with_directory_id(directory_id)
  ),
  with_access_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_url" expected to be of type "string"';
    {
      access_url: converted,
    }
  ),
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  with_connect_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connect_settings" expected to be of type "list"';
    {
      connect_settings: converted,
    }
  ),
  with_connect_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connect_settings" expected to be of type "list"';
    {
      connect_settings+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  with_dns_ip_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ip_addresses" expected to be of type "set"';
    {
      dns_ip_addresses: converted,
    }
  ),
  with_dns_ip_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ip_addresses" expected to be of type "set"';
    {
      dns_ip_addresses+: converted,
    }
  ),
  with_edition(value):: (
    local converted = value;
    assert std.isString(converted) : '"edition" expected to be of type "string"';
    {
      edition: converted,
    }
  ),
  with_enable_sso(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_sso" expected to be of type "bool"';
    {
      enable_sso: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_radius_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"radius_settings" expected to be of type "list"';
    {
      radius_settings: converted,
    }
  ),
  with_radius_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"radius_settings" expected to be of type "list"';
    {
      radius_settings+: converted,
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
  with_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_id" expected to be of type "string"';
    {
      security_group_id: converted,
    }
  ),
  with_short_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"short_name" expected to be of type "string"';
    {
      short_name: converted,
    }
  ),
  with_size(value):: (
    local converted = value;
    assert std.isString(converted) : '"size" expected to be of type "string"';
    {
      size: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_vpc_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_settings" expected to be of type "list"';
    {
      vpc_settings: converted,
    }
  ),
  with_vpc_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_settings" expected to be of type "list"';
    {
      vpc_settings+: converted,
    }
  ),
}
