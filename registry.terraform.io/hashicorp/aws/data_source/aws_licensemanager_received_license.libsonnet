{
  local block = self,
  new(license_arn):: (
    {}
    + block.with_license_arn(license_arn)
  ),
  with_beneficiary(value):: (
    local converted = value;
    assert std.isString(converted) : '"beneficiary" expected to be of type "string"';
    {
      beneficiary: converted,
    }
  ),
  with_consumption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"consumption_configuration" expected to be of type "list"';
    {
      consumption_configuration: converted,
    }
  ),
  with_consumption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"consumption_configuration" expected to be of type "list"';
    {
      consumption_configuration+: converted,
    }
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
    }
  ),
  with_entitlements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"entitlements" expected to be of type "set"';
    {
      entitlements: converted,
    }
  ),
  with_entitlements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"entitlements" expected to be of type "set"';
    {
      entitlements+: converted,
    }
  ),
  with_home_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_region" expected to be of type "string"';
    {
      home_region: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_issuer(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"issuer" expected to be of type "list"';
    {
      issuer: converted,
    }
  ),
  with_issuer_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"issuer" expected to be of type "list"';
    {
      issuer+: converted,
    }
  ),
  with_license_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_arn" expected to be of type "string"';
    {
      license_arn: converted,
    }
  ),
  with_license_metadata(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"license_metadata" expected to be of type "set"';
    {
      license_metadata: converted,
    }
  ),
  with_license_metadata_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"license_metadata" expected to be of type "set"';
    {
      license_metadata+: converted,
    }
  ),
  with_license_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_name" expected to be of type "string"';
    {
      license_name: converted,
    }
  ),
  with_product_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_name" expected to be of type "string"';
    {
      product_name: converted,
    }
  ),
  with_product_sku(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_sku" expected to be of type "string"';
    {
      product_sku: converted,
    }
  ),
  with_received_metadata(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"received_metadata" expected to be of type "list"';
    {
      received_metadata: converted,
    }
  ),
  with_received_metadata_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"received_metadata" expected to be of type "list"';
    {
      received_metadata+: converted,
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
  with_validity(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validity" expected to be of type "list"';
    {
      validity: converted,
    }
  ),
  with_validity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validity" expected to be of type "list"';
    {
      validity+: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
}
