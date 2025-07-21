{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
  ),
  with_access_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_role" expected to be of type "string"';
    {
      access_role: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_as2_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"as2_config" expected to be of type "list"';
    {
      as2_config: converted,
    }
  ),
  with_as2_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"as2_config" expected to be of type "list"';
    {
      as2_config+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_logging_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"logging_role" expected to be of type "string"';
    {
      logging_role: converted,
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
  with_security_policy_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_policy_name" expected to be of type "string"';
    {
      security_policy_name: converted,
    }
  ),
  with_service_managed_egress_ip_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"service_managed_egress_ip_addresses" expected to be of type "list"';
    {
      service_managed_egress_ip_addresses: converted,
    }
  ),
  with_service_managed_egress_ip_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"service_managed_egress_ip_addresses" expected to be of type "list"';
    {
      service_managed_egress_ip_addresses+: converted,
    }
  ),
  with_sftp_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"sftp_config" expected to be of type "list"';
    {
      sftp_config: converted,
    }
  ),
  with_sftp_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"sftp_config" expected to be of type "list"';
    {
      sftp_config+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
}
