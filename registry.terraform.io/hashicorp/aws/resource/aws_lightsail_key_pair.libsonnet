{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_encrypted_fingerprint(value):: (
    local converted = value;
    assert std.isString(converted) : '"encrypted_fingerprint" expected to be of type "string"';
    {
      encrypted_fingerprint: converted,
    }
  ),
  with_encrypted_private_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"encrypted_private_key" expected to be of type "string"';
    {
      encrypted_private_key: converted,
    }
  ),
  with_fingerprint(value):: (
    local converted = value;
    assert std.isString(converted) : '"fingerprint" expected to be of type "string"';
    {
      fingerprint: converted,
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
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_pgp_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"pgp_key" expected to be of type "string"';
    {
      pgp_key: converted,
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
