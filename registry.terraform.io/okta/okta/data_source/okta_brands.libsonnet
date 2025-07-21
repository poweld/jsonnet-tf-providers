{
  local block = self,
  new():: (
    {}
  ),
  '#with_brands':: 'List of `okta_brand` belonging to the organization',
  with_brands(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"brands" expected to be of type "set"';
    {
      brands: converted,
    }
  ),
  '#with_brands_mixin':: 'List of `okta_brand` belonging to the organization',
  with_brands_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"brands" expected to be of type "set"';
    {
      brands+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
