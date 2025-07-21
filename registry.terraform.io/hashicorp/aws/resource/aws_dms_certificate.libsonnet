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
  with_certificate_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_id" expected to be of type "string"';
    {
      certificate_id: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
}
