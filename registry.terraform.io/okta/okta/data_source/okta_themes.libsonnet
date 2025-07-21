{
  local block = self,
  new(brand_id):: (
    {}
    + block.with_brand_id(brand_id)
  ),
  '#with_brand_id':: 'Brand ID',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_themes':: 'List of `okta_them` belonging to the brand in the organization',
  with_themes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"themes" expected to be of type "set"';
    {
      themes: converted,
    }
  ),
  '#with_themes_mixin':: 'List of `okta_them` belonging to the brand in the organization',
  with_themes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"themes" expected to be of type "set"';
    {
      themes+: converted,
    }
  ),
}
