{
  local block = self,
  new(verifiedaccess_instance_id, verifiedaccess_trust_provider_id):: (
    {}
    + block.with_verifiedaccess_instance_id(verifiedaccess_instance_id)
    + block.with_verifiedaccess_trust_provider_id(verifiedaccess_trust_provider_id)
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
  with_verifiedaccess_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_instance_id" expected to be of type "string"';
    {
      verifiedaccess_instance_id: converted,
    }
  ),
  with_verifiedaccess_trust_provider_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_trust_provider_id" expected to be of type "string"';
    {
      verifiedaccess_trust_provider_id: converted,
    }
  ),
}
