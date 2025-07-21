{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_delete_protection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_protection" expected to be of type "bool"';
    {
      delete_protection: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enabled_analysis_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_analysis_types" expected to be of type "set"';
    {
      enabled_analysis_types: converted,
    }
  ),
  with_enabled_analysis_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_analysis_types" expected to be of type "set"';
    {
      enabled_analysis_types+: converted,
    }
  ),
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"encryption_configuration" expected to be of type "set"';
    {
      encryption_configuration: converted,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"encryption_configuration" expected to be of type "set"';
    {
      encryption_configuration+: converted,
    }
  ),
  with_firewall_policy_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_policy_arn" expected to be of type "string"';
    {
      firewall_policy_arn: converted,
    }
  ),
  with_firewall_policy_change_protection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"firewall_policy_change_protection" expected to be of type "bool"';
    {
      firewall_policy_change_protection: converted,
    }
  ),
  with_firewall_status(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"firewall_status" expected to be of type "list"';
    {
      firewall_status: converted,
    }
  ),
  with_firewall_status_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"firewall_status" expected to be of type "list"';
    {
      firewall_status+: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_subnet_change_protection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"subnet_change_protection" expected to be of type "bool"';
    {
      subnet_change_protection: converted,
    }
  ),
  with_subnet_mapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_mapping" expected to be of type "set"';
    {
      subnet_mapping: converted,
    }
  ),
  with_subnet_mapping_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_mapping" expected to be of type "set"';
    {
      subnet_mapping+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_update_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_token" expected to be of type "string"';
    {
      update_token: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
}
