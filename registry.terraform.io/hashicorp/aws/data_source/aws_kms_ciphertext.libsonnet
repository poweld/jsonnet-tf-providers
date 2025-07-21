{
  local block = self,
  new(key_id, plaintext):: (
    {}
    + block.with_key_id(key_id)
    + block.with_plaintext(plaintext)
  ),
  with_ciphertext_blob(value):: (
    local converted = value;
    assert std.isString(converted) : '"ciphertext_blob" expected to be of type "string"';
    {
      ciphertext_blob: converted,
    }
  ),
  with_context(value):: (
    local converted = value;
    assert std.isObject(converted) : '"context" expected to be of type "map"';
    {
      context: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  with_plaintext(value):: (
    local converted = value;
    assert std.isString(converted) : '"plaintext" expected to be of type "string"';
    {
      plaintext: converted,
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
