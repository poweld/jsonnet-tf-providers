{
  local block = self,
  new(location_code):: (
    {}
    + block.with_location_code(location_code)
  ),
  with_available_macsec_port_speeds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"available_macsec_port_speeds" expected to be of type "list"';
    {
      available_macsec_port_speeds: converted,
    }
  ),
  with_available_macsec_port_speeds_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"available_macsec_port_speeds" expected to be of type "list"';
    {
      available_macsec_port_speeds+: converted,
    }
  ),
  with_available_port_speeds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"available_port_speeds" expected to be of type "list"';
    {
      available_port_speeds: converted,
    }
  ),
  with_available_port_speeds_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"available_port_speeds" expected to be of type "list"';
    {
      available_port_speeds+: converted,
    }
  ),
  with_available_providers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"available_providers" expected to be of type "list"';
    {
      available_providers: converted,
    }
  ),
  with_available_providers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"available_providers" expected to be of type "list"';
    {
      available_providers+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_location_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_code" expected to be of type "string"';
    {
      location_code: converted,
    }
  ),
  with_location_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_name" expected to be of type "string"';
    {
      location_name: converted,
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
}
