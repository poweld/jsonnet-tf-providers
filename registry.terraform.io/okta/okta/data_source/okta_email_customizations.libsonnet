{
  local block = self,
  new(brand_id, template_name):: (
    {}
    + block.withBrandId(brand_id)
    + block.withTemplateName(template_name)
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withEmailCustomizations":: "List of `okta_email_customization` belonging to the named email template of the brand in the organization",
  withEmailCustomizations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"email_customizations" expected to be of type "set"';
    {
      email_customizations: converted,
    }
  ),
  "#withEmailCustomizationsMixin":: "List of `okta_email_customization` belonging to the named email template of the brand in the organization",
  withEmailCustomizationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"email_customizations" expected to be of type "set"';
    {
      email_customizations+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withTemplateName":: "Template Name",
  withTemplateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
}
