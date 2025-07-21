{
  local block = self,
  new(path):: (
    {}
    + block.with_path(path)
  ),
  with_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"arns" expected to be of type "list"';
    {
      arns: converted,
    }
  ),
  with_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"arns" expected to be of type "list"';
    {
      arns+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"names" expected to be of type "list"';
    {
      names: converted,
    }
  ),
  with_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"names" expected to be of type "list"';
    {
      names+: converted,
    }
  ),
  with_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  with_recursive(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"recursive" expected to be of type "bool"';
    {
      recursive: converted,
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
  with_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"types" expected to be of type "list"';
    {
      types: converted,
    }
  ),
  with_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"types" expected to be of type "list"';
    {
      types+: converted,
    }
  ),
  with_values(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"values" expected to be of type "list"';
    {
      values: converted,
    }
  ),
  with_values_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"values" expected to be of type "list"';
    {
      values+: converted,
    }
  ),
  with_with_decryption(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"with_decryption" expected to be of type "bool"';
    {
      with_decryption: converted,
    }
  ),
}
