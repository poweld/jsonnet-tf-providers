{
  local block = self,
  new():: (
    {}
  ),
  with_authorization_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_token" expected to be of type "string"';
    {
      authorization_token: converted,
    }
  ),
  with_expires_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"expires_at" expected to be of type "string"';
    {
      expires_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  with_proxy_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"proxy_endpoint" expected to be of type "string"';
    {
      proxy_endpoint: converted,
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
  with_registry_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_id" expected to be of type "string"';
    {
      registry_id: converted,
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
