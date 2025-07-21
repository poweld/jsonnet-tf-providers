{
  local block = self,
  new(secret_id):: (
    {}
    + block.with_secret_id(secret_id)
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
  with_rotation_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"rotation_enabled" expected to be of type "bool"';
    {
      rotation_enabled: converted,
    }
  ),
  with_rotation_lambda_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"rotation_lambda_arn" expected to be of type "string"';
    {
      rotation_lambda_arn: converted,
    }
  ),
  with_rotation_rules(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"rotation_rules" expected to be of type "list"';
    {
      rotation_rules: converted,
    }
  ),
  with_rotation_rules_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"rotation_rules" expected to be of type "list"';
    {
      rotation_rules+: converted,
    }
  ),
  with_secret_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_id" expected to be of type "string"';
    {
      secret_id: converted,
    }
  ),
}
