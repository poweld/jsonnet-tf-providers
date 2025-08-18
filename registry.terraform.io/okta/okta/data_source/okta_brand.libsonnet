{
  local block = self,
  new(brand_id):: (
    {
      terraformObject:: "okta_brand",
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
}
