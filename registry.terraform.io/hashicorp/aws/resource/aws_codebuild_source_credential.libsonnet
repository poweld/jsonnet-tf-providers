{
  local block = self,
  new(auth_type, server_type, token):: (
    {}
    + block.with_auth_type(auth_type)
    + block.with_server_type(server_type)
    + block.with_token(token)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auth_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_type" expected to be of type "string"';
    {
      auth_type: converted,
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
  with_server_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_type" expected to be of type "string"';
    {
      server_type: converted,
    }
  ),
  with_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"token" expected to be of type "string"';
    {
      token: converted,
    }
  ),
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
}
