{
  local block = self,
  new(application_id, attribute_group_id):: (
    {}
    + block.with_application_id(application_id)
    + block.with_attribute_group_id(attribute_group_id)
  ),
  '#with_application_id':: 'ID of the application.',
  with_application_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  '#with_attribute_group_id':: 'ID of the attribute group to associate with the application.',
  with_attribute_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"attribute_group_id" expected to be of type "string"';
    {
      attribute_group_id: converted,
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
