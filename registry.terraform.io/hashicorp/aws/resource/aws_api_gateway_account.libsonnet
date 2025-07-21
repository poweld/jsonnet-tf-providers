{
  local block = self,
  new():: (
    {}
  ),
  with_api_key_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key_version" expected to be of type "string"';
    {
      api_key_version: converted,
    }
  ),
  with_cloudwatch_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_role_arn" expected to be of type "string"';
    {
      cloudwatch_role_arn: converted,
    }
  ),
  with_features(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"features" expected to be of type "set"';
    {
      features: converted,
    }
  ),
  with_features_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"features" expected to be of type "set"';
    {
      features+: converted,
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
  with_throttle_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"throttle_settings" expected to be of type "list"';
    {
      throttle_settings: converted,
    }
  ),
  with_throttle_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"throttle_settings" expected to be of type "list"';
    {
      throttle_settings+: converted,
    }
  ),
}
