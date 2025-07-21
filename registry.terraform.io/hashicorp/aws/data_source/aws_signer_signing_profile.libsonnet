{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_platform_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_display_name" expected to be of type "string"';
    {
      platform_display_name: converted,
    }
  ),
  with_platform_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_id" expected to be of type "string"';
    {
      platform_id: converted,
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
  with_revocation_record(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"revocation_record" expected to be of type "list"';
    {
      revocation_record: converted,
    }
  ),
  with_revocation_record_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"revocation_record" expected to be of type "list"';
    {
      revocation_record+: converted,
    }
  ),
  with_signature_validity_period(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"signature_validity_period" expected to be of type "list"';
    {
      signature_validity_period: converted,
    }
  ),
  with_signature_validity_period_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"signature_validity_period" expected to be of type "list"';
    {
      signature_validity_period+: converted,
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
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  with_version_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_arn" expected to be of type "string"';
    {
      version_arn: converted,
    }
  ),
}
