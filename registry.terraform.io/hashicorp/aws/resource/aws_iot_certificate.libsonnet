{
  local block = self,
  new(active):: (
    {}
    + block.with_active(active)
  ),
  with_active(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
    {
      active: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_ca_certificate_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificate_id" expected to be of type "string"';
    {
      ca_certificate_id: converted,
    }
  ),
  with_ca_pem(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_pem" expected to be of type "string"';
    {
      ca_pem: converted,
    }
  ),
  with_certificate_pem(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_pem" expected to be of type "string"';
    {
      certificate_pem: converted,
    }
  ),
  with_csr(value):: (
    local converted = value;
    assert std.isString(converted) : '"csr" expected to be of type "string"';
    {
      csr: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_private_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
    }
  ),
  with_public_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key" expected to be of type "string"';
    {
      public_key: converted,
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
