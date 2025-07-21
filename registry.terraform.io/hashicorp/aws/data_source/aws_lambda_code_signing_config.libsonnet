{
  local block = self,
  new(arn):: (
    {}
    + block.with_arn(arn)
  ),
  with_allowed_publishers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"allowed_publishers" expected to be of type "list"';
    {
      allowed_publishers: converted,
    }
  ),
  with_allowed_publishers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"allowed_publishers" expected to be of type "list"';
    {
      allowed_publishers+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_config_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"config_id" expected to be of type "string"';
    {
      config_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
    }
  ),
  with_policies(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"policies" expected to be of type "list"';
    {
      policies: converted,
    }
  ),
  with_policies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"policies" expected to be of type "list"';
    {
      policies+: converted,
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
