{
  local block = self,
  new(tracker_name):: (
    {}
    + block.with_tracker_name(tracker_name)
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_position_filtering(value):: (
    local converted = value;
    assert std.isString(converted) : '"position_filtering" expected to be of type "string"';
    {
      position_filtering: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_tracker_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracker_arn" expected to be of type "string"';
    {
      tracker_arn: converted,
    }
  ),
  with_tracker_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracker_name" expected to be of type "string"';
    {
      tracker_name: converted,
    }
  ),
  with_update_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_time" expected to be of type "string"';
    {
      update_time: converted,
    }
  ),
}
