{
  local block = self,
  new(name, query_string):: (
    {}
    + block.with_name(name)
    + block.with_query_string(query_string)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_log_group_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_group_names" expected to be of type "list"';
    {
      log_group_names: converted,
    }
  ),
  with_log_group_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_group_names" expected to be of type "list"';
    {
      log_group_names+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_query_definition_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_definition_id" expected to be of type "string"';
    {
      query_definition_id: converted,
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
}
