{
  local block = self,
  new(email_identity):: (
    {}
    + block.with_email_identity(email_identity)
  ),
  with_email_forwarding_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"email_forwarding_enabled" expected to be of type "bool"';
    {
      email_forwarding_enabled: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
}
