{
  local block = self,
  new(consumer_arn, tracker_name):: (
    {}
    + block.with_consumer_arn(consumer_arn)
    + block.with_tracker_name(tracker_name)
  ),
  with_consumer_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"consumer_arn" expected to be of type "string"';
    {
      consumer_arn: converted,
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
  with_tracker_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracker_name" expected to be of type "string"';
    {
      tracker_name: converted,
    }
  ),
}
