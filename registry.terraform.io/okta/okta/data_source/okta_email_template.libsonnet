{
  local block = self,
  new(brand_id, name):: (
    {}
    + block.with_brand_id(brand_id)
    + block.with_name(name)
  ),
  '#with_brand_id':: 'Brand ID',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_links':: 'Link relations for this object - JSON HAL - Discoverable resources related to the email template',
  with_links(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  '#with_name':: 'The name of the email template',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
