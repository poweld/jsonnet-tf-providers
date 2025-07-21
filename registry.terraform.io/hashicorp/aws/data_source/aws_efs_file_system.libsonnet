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
  with_availability_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_id" expected to be of type "string"';
    {
      availability_zone_id: converted,
    }
  ),
  with_availability_zone_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_name" expected to be of type "string"';
    {
      availability_zone_name: converted,
    }
  ),
  with_creation_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_token" expected to be of type "string"';
    {
      creation_token: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
    }
  ),
  with_file_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
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
  with_lifecycle_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"lifecycle_policy" expected to be of type "list"';
    {
      lifecycle_policy: converted,
    }
  ),
  with_lifecycle_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"lifecycle_policy" expected to be of type "list"';
    {
      lifecycle_policy+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_performance_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"performance_mode" expected to be of type "string"';
    {
      performance_mode: converted,
    }
  ),
  with_protection(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"protection" expected to be of type "list"';
    {
      protection: converted,
    }
  ),
  with_protection_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"protection" expected to be of type "list"';
    {
      protection+: converted,
    }
  ),
  with_provisioned_throughput_in_mibps(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provisioned_throughput_in_mibps" expected to be of type "number"';
    {
      provisioned_throughput_in_mibps: converted,
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
  with_size_in_bytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"size_in_bytes" expected to be of type "number"';
    {
      size_in_bytes: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_throughput_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"throughput_mode" expected to be of type "string"';
    {
      throughput_mode: converted,
    }
  ),
}
