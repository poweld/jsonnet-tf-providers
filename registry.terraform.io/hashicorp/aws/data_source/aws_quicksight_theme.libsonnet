{
  local block = self,
  new(theme_id):: (
    {}
    + block.with_theme_id(theme_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_base_theme_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_theme_id" expected to be of type "string"';
    {
      base_theme_id: converted,
    }
  ),
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"configuration" expected to be of type "list"';
    {
      configuration: converted,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"configuration" expected to be of type "list"';
    {
      configuration+: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"permissions" expected to be of type "list"';
    {
      permissions: converted,
    }
  ),
  with_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"permissions" expected to be of type "list"';
    {
      permissions+: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_theme_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"theme_id" expected to be of type "string"';
    {
      theme_id: converted,
    }
  ),
  with_version_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_description" expected to be of type "string"';
    {
      version_description: converted,
    }
  ),
  with_version_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version_number" expected to be of type "number"';
    {
      version_number: converted,
    }
  ),
}
