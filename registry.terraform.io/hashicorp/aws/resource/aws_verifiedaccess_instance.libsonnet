{
  local block = self,
  new():: (
    {}
  ),
  with_cidr_endpoints_custom_subdomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_endpoints_custom_subdomain" expected to be of type "string"';
    {
      cidr_endpoints_custom_subdomain: converted,
    }
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_fips_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fips_enabled" expected to be of type "bool"';
    {
      fips_enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
    }
  ),
  with_name_servers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"name_servers" expected to be of type "set"';
    {
      name_servers: converted,
    }
  ),
  with_name_servers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"name_servers" expected to be of type "set"';
    {
      name_servers+: converted,
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
  with_verified_access_trust_providers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"verified_access_trust_providers" expected to be of type "list"';
    {
      verified_access_trust_providers: converted,
    }
  ),
  with_verified_access_trust_providers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"verified_access_trust_providers" expected to be of type "list"';
    {
      verified_access_trust_providers+: converted,
    }
  ),
}
