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
  '#with_email_templates':: 'List of `okta_email_template` belonging to a brand in the organization',
  with_email_templates(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"email_templates" expected to be of type "set"';
    {
      email_templates: converted,
    }
  ),
  '#with_email_templates_mixin':: 'List of `okta_email_template` belonging to a brand in the organization',
  with_email_templates_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"email_templates" expected to be of type "set"';
    {
      email_templates+: converted,
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
