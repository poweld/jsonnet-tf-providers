{
  local block = self,
  new(data_share_arn):: (
    {}
    + block.with_data_share_arn(data_share_arn)
  ),
  with_allow_writes(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_writes" expected to be of type "bool"';
    {
      allow_writes: converted,
    }
  ),
  with_associate_entire_account(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"associate_entire_account" expected to be of type "bool"';
    {
      associate_entire_account: converted,
    }
  ),
  with_consumer_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"consumer_arn" expected to be of type "string"';
    {
      consumer_arn: converted,
    }
  ),
  with_consumer_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"consumer_region" expected to be of type "string"';
    {
      consumer_region: converted,
    }
  ),
  with_data_share_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_share_arn" expected to be of type "string"';
    {
      data_share_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_managed_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"managed_by" expected to be of type "string"';
    {
      managed_by: converted,
    }
  ),
  with_producer_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"producer_arn" expected to be of type "string"';
    {
      producer_arn: converted,
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
