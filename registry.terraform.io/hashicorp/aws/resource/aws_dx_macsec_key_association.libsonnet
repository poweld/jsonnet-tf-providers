{
  local block = self,
  new(connection_id):: (
    {}
    + block.with_connection_id(connection_id)
  ),
  with_cak(value):: (
    local converted = value;
    assert std.isString(converted) : '"cak" expected to be of type "string"';
    {
      cak: converted,
    }
  ),
  with_ckn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ckn" expected to be of type "string"';
    {
      ckn: converted,
    }
  ),
  with_connection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
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
  with_secret_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
    {
      secret_arn: converted,
    }
  ),
  with_start_on(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_on" expected to be of type "string"';
    {
      start_on: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
}
