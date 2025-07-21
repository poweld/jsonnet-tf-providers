{
  local block = self,
  new(api_caching_behavior, api_id, ttl, type):: (
    {}
    + block.with_api_caching_behavior(api_caching_behavior)
    + block.with_api_id(api_id)
    + block.with_ttl(ttl)
    + block.with_type(type)
  ),
  with_api_caching_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_caching_behavior" expected to be of type "string"';
    {
      api_caching_behavior: converted,
    }
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_at_rest_encryption_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"at_rest_encryption_enabled" expected to be of type "bool"';
    {
      at_rest_encryption_enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_transit_encryption_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_encryption_enabled" expected to be of type "bool"';
    {
      transit_encryption_enabled: converted,
    }
  ),
  with_ttl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
    {
      ttl: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
