{
  local block = self,
  new(destination_account, destination_region, framework_id):: (
    {}
    + block.with_destination_account(destination_account)
    + block.with_destination_region(destination_region)
    + block.with_framework_id(framework_id)
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_destination_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_account" expected to be of type "string"';
    {
      destination_account: converted,
    }
  ),
  with_destination_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_region" expected to be of type "string"';
    {
      destination_region: converted,
    }
  ),
  with_framework_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"framework_id" expected to be of type "string"';
    {
      framework_id: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
