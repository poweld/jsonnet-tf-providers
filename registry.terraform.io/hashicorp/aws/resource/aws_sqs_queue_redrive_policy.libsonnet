{
  local block = self,
  new(queue_url, redrive_policy):: (
    {}
    + block.with_queue_url(queue_url)
    + block.with_redrive_policy(redrive_policy)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_queue_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"queue_url" expected to be of type "string"';
    {
      queue_url: converted,
    }
  ),
  with_redrive_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"redrive_policy" expected to be of type "string"';
    {
      redrive_policy: converted,
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
