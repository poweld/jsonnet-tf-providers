{
  local block = self,
  new(terraformName, brandId, customizationId, templateName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_customization",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["body", "brand_id", "customization_id", "id", "is_default", "language", "links", "subject", "template_name"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withBrandId(brandId)
    + block.withCustomizationId(customizationId)
    + block.withTemplateName(templateName)
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
  "#withTemplateName":: "Template Name",
  withTemplateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
