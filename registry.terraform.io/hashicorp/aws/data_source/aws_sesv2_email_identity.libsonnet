{
  local block = self,
  new(email_identity):: (
    {}
    + block.with_email_identity(email_identity)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_configuration_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
  ),
  with_dkim_signing_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dkim_signing_attributes" expected to be of type "list"';
    {
      dkim_signing_attributes: converted,
    }
  ),
  with_dkim_signing_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dkim_signing_attributes" expected to be of type "list"';
    {
      dkim_signing_attributes+: converted,
    }
  ),
  with_email_identity(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_identity" expected to be of type "string"';
    {
      email_identity: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_type" expected to be of type "string"';
    {
      identity_type: converted,
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
  with_verified_for_sending_status(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"verified_for_sending_status" expected to be of type "bool"';
    {
      verified_for_sending_status: converted,
    }
  ),
}
