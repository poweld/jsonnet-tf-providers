{
  local block = self,
  new(user_id):: (
    {}
    + block.with_user_id(user_id)
  ),
  with_access_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_string" expected to be of type "string"';
    {
      access_string: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_no_password_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"no_password_required" expected to be of type "bool"';
    {
      no_password_required: converted,
    }
  ),
  with_passwords(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"passwords" expected to be of type "set"';
    {
      passwords: converted,
    }
  ),
  with_passwords_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"passwords" expected to be of type "set"';
    {
      passwords+: converted,
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
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  authentication_mode:: {
    local block = self,
    new():: (
      {}
    ),
    with_password_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"password_count" expected to be of type "number"';
      {
        password_count: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  with_authentication_mode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_mode: value,
    }
  ),
  with_authentication_mode_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_mode+: converted,
    }
  ),
}
