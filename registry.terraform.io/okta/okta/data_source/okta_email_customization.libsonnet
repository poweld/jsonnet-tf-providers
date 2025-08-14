{
  local block = self,
  new(brand_id, customization_id, template_name):: (
    {
      terraformObject:: "okta_email_customization",
    }
    + block.withBrandId(brand_id)
    + block.withCustomizationId(customization_id)
    + block.withTemplateName(template_name)
  ),
  "#withBody":: "The body of the customization",
  withBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
    }
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withCustomizationId":: "The ID of the customization",
  withCustomizationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"customization_id" expected to be of type "string"';
    {
      customization_id: converted,
    }
  ),
  "#withId":: "The ID of the customization",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIsDefault":: "Whether the customization is the default",
  withIsDefault(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_default" expected to be of type "bool"';
    {
      is_default: converted,
    }
  ),
  "#withLanguage":: "The language supported by the customization",
  withLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"language" expected to be of type "string"';
    {
      language: converted,
    }
  ),
  "#withLinks":: "Link relations for this object - JSON HAL - Discoverable resources related to the email template",
  withLinks(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  "#withSubject":: "The subject of the customization",
  withSubject(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject" expected to be of type "string"';
    {
      subject: converted,
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
