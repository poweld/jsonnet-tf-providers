{
  local block = self,
  new(calling_regions, cidr_allow_list, voice_connector_id):: (
    {}
    + block.with_calling_regions(calling_regions)
    + block.with_cidr_allow_list(cidr_allow_list)
    + block.with_voice_connector_id(voice_connector_id)
  ),
  with_calling_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"calling_regions" expected to be of type "set"';
    {
      calling_regions: converted,
    }
  ),
  with_calling_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"calling_regions" expected to be of type "set"';
    {
      calling_regions+: converted,
    }
  ),
  with_cidr_allow_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_allow_list" expected to be of type "set"';
    {
      cidr_allow_list: converted,
    }
  ),
  with_cidr_allow_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_allow_list" expected to be of type "set"';
    {
      cidr_allow_list+: converted,
    }
  ),
  with_cps_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cps_limit" expected to be of type "number"';
    {
      cps_limit: converted,
    }
  ),
  with_default_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_phone_number" expected to be of type "string"';
    {
      default_phone_number: converted,
    }
  ),
  with_disabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_voice_connector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
    {
      voice_connector_id: converted,
    }
  ),
}
