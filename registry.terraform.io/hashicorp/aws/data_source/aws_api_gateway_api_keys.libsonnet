{
  local block = self,
  new():: (
    {}
  ),
  with_customer_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_id" expected to be of type "string"';
    {
      customer_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_include_values(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_values" expected to be of type "bool"';
    {
      include_values: converted,
    }
  ),
  with_items(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"items" expected to be of type "list"';
    {
      items: converted,
    }
  ),
  with_items_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"items" expected to be of type "list"';
    {
      items+: converted,
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
