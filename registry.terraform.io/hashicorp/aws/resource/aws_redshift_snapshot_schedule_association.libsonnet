{
  local block = self,
  new(cluster_identifier, schedule_identifier):: (
    {}
    + block.with_cluster_identifier(cluster_identifier)
    + block.with_schedule_identifier(schedule_identifier)
  ),
  with_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
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
  with_schedule_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_identifier" expected to be of type "string"';
    {
      schedule_identifier: converted,
    }
  ),
}
