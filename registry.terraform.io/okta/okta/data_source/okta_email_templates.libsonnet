{
  local block = self,
  new(brand_id):: (
    {
      terraformObject:: "okta_email_templates",
      terraformType:: "data",
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
  "#withEmailTemplates":: "List of `okta_email_template` belonging to a brand in the organization",
  withEmailTemplates(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"email_templates" expected to be of type "set"';
    {
      email_templates: converted,
    }
  ),
  "#withEmailTemplatesMixin":: "List of `okta_email_template` belonging to a brand in the organization",
  withEmailTemplatesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"email_templates" expected to be of type "set"';
    {
      email_templates+: converted,
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
