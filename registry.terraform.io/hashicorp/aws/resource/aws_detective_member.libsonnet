{
  local block = self,
  new(account_id, email_address, graph_arn):: (
    {}
    + block.with_account_id(account_id)
    + block.with_email_address(email_address)
    + block.with_graph_arn(graph_arn)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_administrator_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"administrator_id" expected to be of type "string"';
    {
      administrator_id: converted,
    }
  ),
  with_disable_email_notification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_email_notification" expected to be of type "bool"';
    {
      disable_email_notification: converted,
    }
  ),
  with_disabled_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"disabled_reason" expected to be of type "string"';
    {
      disabled_reason: converted,
    }
  ),
  with_email_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_address" expected to be of type "string"';
    {
      email_address: converted,
    }
  ),
  with_graph_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"graph_arn" expected to be of type "string"';
    {
      graph_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invited_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"invited_time" expected to be of type "string"';
    {
      invited_time: converted,
    }
  ),
  with_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"message" expected to be of type "string"';
    {
      message: converted,
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
  with_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_time" expected to be of type "string"';
    {
      updated_time: converted,
    }
  ),
  with_volume_usage_in_bytes(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_usage_in_bytes" expected to be of type "string"';
    {
      volume_usage_in_bytes: converted,
    }
  ),
}
