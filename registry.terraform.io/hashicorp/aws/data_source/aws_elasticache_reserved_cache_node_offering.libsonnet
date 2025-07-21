{
  local block = self,
  new(cache_node_type, duration, offering_type, product_description):: (
    {}
    + block.with_cache_node_type(cache_node_type)
    + block.with_duration(duration)
    + block.with_offering_type(offering_type)
    + block.with_product_description(product_description)
  ),
  with_cache_node_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_node_type" expected to be of type "string"';
    {
      cache_node_type: converted,
    }
  ),
  with_duration(value):: (
    local converted = value;
    assert std.isString(converted) : '"duration" expected to be of type "string"';
    {
      duration: converted,
    }
  ),
  with_fixed_price(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"fixed_price" expected to be of type "number"';
    {
      fixed_price: converted,
    }
  ),
  with_offering_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"offering_id" expected to be of type "string"';
    {
      offering_id: converted,
    }
  ),
  with_offering_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"offering_type" expected to be of type "string"';
    {
      offering_type: converted,
    }
  ),
  with_product_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_description" expected to be of type "string"';
    {
      product_description: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
}
