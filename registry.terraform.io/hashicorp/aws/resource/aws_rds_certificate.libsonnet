{
  local block = self,
  new(certificate_identifier):: (
    {}
    + block.with_certificate_identifier(certificate_identifier)
  ),
  with_certificate_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_identifier" expected to be of type "string"';
    {
      certificate_identifier: converted,
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
