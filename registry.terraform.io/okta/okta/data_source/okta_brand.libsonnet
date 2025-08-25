{
  local block = self,
  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_brand",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["brand_id", "custom_privacy_policy_url", "id", "links", "name", "remove_powered_by_okta"],
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
