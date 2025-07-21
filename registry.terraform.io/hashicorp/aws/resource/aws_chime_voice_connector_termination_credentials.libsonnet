{
  local block = self,
  new(voice_connector_id):: (
    {}
    + block.with_voice_connector_id(voice_connector_id)
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
  with_voice_connector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
    {
      voice_connector_id: converted,
    }
  ),
  credentials:: {
    local block = self,
    new(password, username):: (
      {}
      + block.with_password(password)
      + block.with_username(username)
    ),
    with_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    with_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
      }
    ),
  },
  with_credentials(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credentials: value,
    }
  ),
  with_credentials_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credentials+: converted,
    }
  ),
}
