{
  local block = self,
  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_themes",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["brand_id", "id", "themes"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withBrandId(brandId)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
