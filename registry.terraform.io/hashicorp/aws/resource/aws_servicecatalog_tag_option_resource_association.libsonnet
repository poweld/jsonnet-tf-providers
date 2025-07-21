{
  local block = self,
  new(resource_id, tag_option_id):: (
    {}
    + block.with_resource_id(resource_id)
    + block.with_tag_option_id(tag_option_id)
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
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  with_resource_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_created_time" expected to be of type "string"';
    {
      resource_created_time: converted,
    }
  ),
  with_resource_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_description" expected to be of type "string"';
    {
      resource_description: converted,
    }
  ),
  with_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  with_resource_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_name" expected to be of type "string"';
    {
      resource_name: converted,
    }
  ),
  with_tag_option_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_option_id" expected to be of type "string"';
    {
      tag_option_id: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
