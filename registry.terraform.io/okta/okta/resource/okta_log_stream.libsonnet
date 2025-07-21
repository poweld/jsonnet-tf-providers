{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
  ),
  '#with_id':: 'Log Stream ID',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Unique name for the Log Stream object',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_status':: 'Stream status',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: "Streaming provider used - 'aws_eventbridge' or 'splunk_cloud_logstreaming'",
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  settings:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_account_id':: "AWS account ID. Required only for 'aws_eventbridge' type",
    with_account_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_id" expected to be of type "string"';
      {
        account_id: converted,
      }
    ),
    '#with_edition':: "Edition of the Splunk Cloud instance. Could be one of: 'aws', 'aws_govcloud', 'gcp'. Required only for 'splunk_cloud_logstreaming' type",
    with_edition(value):: (
      local converted = value;
      assert std.isString(converted) : '"edition" expected to be of type "string"';
      {
        edition: converted,
      }
    ),
    '#with_event_source_name':: "An alphanumeric name (no spaces) to identify this event source in AWS EventBridge. Required only for 'aws_eventbridge' type",
    with_event_source_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_source_name" expected to be of type "string"';
      {
        event_source_name: converted,
      }
    ),
    '#with_host':: "The domain name for Splunk Cloud instance. Don't include http or https in the string. For example: 'acme.splunkcloud.com'. Required only for 'splunk_cloud_logstreaming' type",
    with_host(value):: (
      local converted = value;
      assert std.isString(converted) : '"host" expected to be of type "string"';
      {
        host: converted,
      }
    ),
    '#with_region':: "The destination AWS region where event source is located. Required only for 'aws_eventbridge' type",
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    '#with_token':: "The HEC token for your Splunk Cloud HTTP Event Collector. Required only for 'splunk_cloud_logstreaming' type",
    with_token(value):: (
      local converted = value;
      assert std.isString(converted) : '"token" expected to be of type "string"';
      {
        token: converted,
      }
    ),
  },
  with_settings(value):: (
    local converted = value;
    {
      settings: value,
    }
  ),
}
