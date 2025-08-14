{
  local block = self,
  new(brand_id, name):: (
    {
      terraformObject:: "okta_email_template",
      terraformType:: "data",
    }
    + block.withBrandId(brand_id)
    + block.withName(name)
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
  "#withLinks":: "Link relations for this object - JSON HAL - Discoverable resources related to the email template",
  withLinks(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  "#withName":: "The name of the email template",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
