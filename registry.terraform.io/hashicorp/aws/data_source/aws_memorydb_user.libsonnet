{
  local block = self,
  new(user_name):: (
    {}
    + block.with_user_name(user_name)
  ),
  with_access_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_string" expected to be of type "string"';
    {
      access_string: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authentication_mode(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authentication_mode" expected to be of type "list"';
    {
      authentication_mode: converted,
    }
  ),
  with_authentication_mode_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authentication_mode" expected to be of type "list"';
    {
      authentication_mode+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_minimum_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"minimum_engine_version" expected to be of type "string"';
    {
      minimum_engine_version: converted,
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
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
}
