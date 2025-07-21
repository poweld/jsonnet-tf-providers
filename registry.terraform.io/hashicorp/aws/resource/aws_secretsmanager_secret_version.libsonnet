{
  local block = self,
  new(secret_id):: (
    {}
    + block.with_secret_id(secret_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_has_secret_string_wo(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_secret_string_wo" expected to be of type "bool"';
    {
      has_secret_string_wo: converted,
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
  with_secret_binary(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_binary" expected to be of type "string"';
    {
      secret_binary: converted,
    }
  ),
  with_secret_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_id" expected to be of type "string"';
    {
      secret_id: converted,
    }
  ),
  with_secret_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_string" expected to be of type "string"';
    {
      secret_string: converted,
    }
  ),
  with_secret_string_wo(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_string_wo" expected to be of type "string"';
    {
      secret_string_wo: converted,
    }
  ),
  with_secret_string_wo_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"secret_string_wo_version" expected to be of type "number"';
    {
      secret_string_wo_version: converted,
    }
  ),
  with_version_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
    }
  ),
  with_version_stages(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"version_stages" expected to be of type "set"';
    {
      version_stages: converted,
    }
  ),
  with_version_stages_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"version_stages" expected to be of type "set"';
    {
      version_stages+: converted,
    }
  ),
}
