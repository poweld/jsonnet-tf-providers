{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_brands",
      terraformType:: "data",
    }
  ),
  "#withBrands":: "List of `okta_brand` belonging to the organization",
  withBrands(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"brands" expected to be of type "set"';
    {
      brands: converted,
    }
  ),
  "#withBrandsMixin":: "List of `okta_brand` belonging to the organization",
  withBrandsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"brands" expected to be of type "set"';
    {
      brands+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
