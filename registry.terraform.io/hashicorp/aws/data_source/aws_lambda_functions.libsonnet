{
  local block = self,
  new():: (
    {}
  ),
  with_function_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"function_arns" expected to be of type "list"';
    {
      function_arns: converted,
    }
  ),
  with_function_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"function_arns" expected to be of type "list"';
    {
      function_arns+: converted,
    }
  ),
  with_function_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"function_names" expected to be of type "list"';
    {
      function_names: converted,
    }
  ),
  with_function_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"function_names" expected to be of type "list"';
    {
      function_names+: converted,
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
}
