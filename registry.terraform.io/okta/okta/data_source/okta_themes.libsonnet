{
  local block = self,
  new(brand_id):: (
    {
      terraformObject:: "okta_themes",
    }
    + block.withBrandId(brand_id)
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withThemes":: "List of `okta_them` belonging to the brand in the organization",
  withThemes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"themes" expected to be of type "set"';
    {
      themes: converted,
    }
  ),
  "#withThemesMixin":: "List of `okta_them` belonging to the brand in the organization",
  withThemesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"themes" expected to be of type "set"';
    {
      themes+: converted,
    }
  ),
}
