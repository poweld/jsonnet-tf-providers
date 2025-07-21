{
  local block = self,
  new(query_string):: (
    {}
    + block.with_query_string(query_string)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_query_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_string" expected to be of type "string"';
    {
      query_string: converted,
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
  with_resource_count(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resource_count" expected to be of type "list"';
    {
      resource_count: converted,
    }
  ),
  with_resource_count_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resource_count" expected to be of type "list"';
    {
      resource_count+: converted,
    }
  ),
  with_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resources" expected to be of type "list"';
    {
      resources: converted,
    }
  ),
  with_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resources" expected to be of type "list"';
    {
      resources+: converted,
    }
  ),
  with_view_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"view_arn" expected to be of type "string"';
    {
      view_arn: converted,
    }
  ),
}
