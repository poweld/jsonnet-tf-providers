{
  local block = self,
  new(certificate_id):: (
    {}
    + block.with_certificate_id(certificate_id)
  ),
  with_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  with_certificate_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_creation_date" expected to be of type "string"';
    {
      certificate_creation_date: converted,
    }
  ),
  with_certificate_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_id" expected to be of type "string"';
    {
      certificate_id: converted,
    }
  ),
  with_certificate_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_owner" expected to be of type "string"';
    {
      certificate_owner: converted,
    }
  ),
  with_certificate_pem(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_pem" expected to be of type "string"';
    {
      certificate_pem: converted,
    }
  ),
  with_certificate_wallet(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_wallet" expected to be of type "string"';
    {
      certificate_wallet: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"key_length" expected to be of type "number"';
    {
      key_length: converted,
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
  with_signing_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_algorithm" expected to be of type "string"';
    {
      signing_algorithm: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_valid_from_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_from_date" expected to be of type "string"';
    {
      valid_from_date: converted,
    }
  ),
  with_valid_to_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_to_date" expected to be of type "string"';
    {
      valid_to_date: converted,
    }
  ),
}
