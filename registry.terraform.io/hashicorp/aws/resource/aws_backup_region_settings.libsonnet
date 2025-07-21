{
  local block = self,
  new(resource_type_opt_in_preference):: (
    {}
    + block.with_resource_type_opt_in_preference(resource_type_opt_in_preference)
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
  with_resource_type_management_preference(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_type_management_preference" expected to be of type "map"';
    {
      resource_type_management_preference: converted,
    }
  ),
  with_resource_type_opt_in_preference(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_type_opt_in_preference" expected to be of type "map"';
    {
      resource_type_opt_in_preference: converted,
    }
  ),
}
