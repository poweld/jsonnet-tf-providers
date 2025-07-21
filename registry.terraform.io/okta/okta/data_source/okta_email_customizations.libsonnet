{
  local block = self,
  new(brand_id, template_name):: (
    {}
    + block.with_brand_id(brand_id)
    + block.with_template_name(template_name)
  ),
  '#with_brand_id':: 'Brand ID',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  '#with_email_customizations':: 'List of `okta_email_customization` belonging to the named email template of the brand in the organization',
  with_email_customizations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"email_customizations" expected to be of type "set"';
    {
      email_customizations: converted,
    }
  ),
  '#with_email_customizations_mixin':: 'List of `okta_email_customization` belonging to the named email template of the brand in the organization',
  with_email_customizations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"email_customizations" expected to be of type "set"';
    {
      email_customizations+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_template_name':: 'Template Name',
  with_template_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
}
