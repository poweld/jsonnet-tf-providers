{
  local block = self,
  new(brand_id, theme_id):: (
    {
      terraformObject:: "okta_theme",
      terraformType:: "data",
    }
    + block.withBrandId(brand_id)
    + block.withThemeId(theme_id)
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withThemeId":: "Theme ID",
  withThemeId(value):: (
    local converted = value;
    assert std.isString(converted) : '"theme_id" expected to be of type "string"';
    {
      theme_id: converted,
    }
  ),
}
