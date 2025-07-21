{
  local block = self,
  new(arn):: (
    {}
    + block.with_arn(arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  with_certificate_chain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  with_certificate_signing_request(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_signing_request" expected to be of type "string"';
    {
      certificate_signing_request: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_storage_security_standard(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_storage_security_standard" expected to be of type "string"';
    {
      key_storage_security_standard: converted,
    }
  ),
  with_not_after(value):: (
    local converted = value;
    assert std.isString(converted) : '"not_after" expected to be of type "string"';
    {
      not_after: converted,
    }
  ),
  with_not_before(value):: (
    local converted = value;
    assert std.isString(converted) : '"not_before" expected to be of type "string"';
    {
      not_before: converted,
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
  with_revocation_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"revocation_configuration" expected to be of type "list"';
    {
      revocation_configuration: converted,
    }
  ),
  with_revocation_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"revocation_configuration" expected to be of type "list"';
    {
      revocation_configuration+: converted,
    }
  ),
  with_serial(value):: (
    local converted = value;
    assert std.isString(converted) : '"serial" expected to be of type "string"';
    {
      serial: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_usage_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_mode" expected to be of type "string"';
    {
      usage_mode: converted,
    }
  ),
}
