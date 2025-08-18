{
  local block = self,
  new(brand_id, template_name):: (
    {
      terraformObject:: "okta_email_customizations",
      terraformType:: "data",
    }
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
