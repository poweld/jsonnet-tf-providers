{
  local block = self,
  new(delivery_destination_name, delivery_destination_policy):: (
    {}
    + block.with_delivery_destination_name(delivery_destination_name)
    + block.with_delivery_destination_policy(delivery_destination_policy)
  ),
  with_delivery_destination_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_destination_name" expected to be of type "string"';
    {
      delivery_destination_name: converted,
    }
  ),
  with_delivery_destination_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_destination_policy" expected to be of type "string"';
    {
      delivery_destination_policy: converted,
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
