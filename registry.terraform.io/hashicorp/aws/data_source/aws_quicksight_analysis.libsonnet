{
  local block = self,
  new(analysis_id):: (
    {}
    + block.with_analysis_id(analysis_id)
  ),
  with_analysis_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"analysis_id" expected to be of type "string"';
    {
      analysis_id: converted,
    }
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
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"definition" expected to be of type "list"';
    {
      definition: converted,
    }
  ),
  with_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"definition" expected to be of type "list"';
    {
      definition+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_published_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_published_time" expected to be of type "string"';
    {
      last_published_time: converted,
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
  with_theme_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"theme_arn" expected to be of type "string"';
    {
      theme_arn: converted,
    }
  ),
}
