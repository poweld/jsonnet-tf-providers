{
  local block = self,
  new(voice_connector_id):: (
    {}
    + block.with_voice_connector_id(voice_connector_id)
  ),
  with_enable_media_metric_logs(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_media_metric_logs" expected to be of type "bool"';
    {
      enable_media_metric_logs: converted,
    }
  ),
  with_enable_sip_logs(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_sip_logs" expected to be of type "bool"';
    {
      enable_sip_logs: converted,
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
  with_voice_connector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
    {
      voice_connector_id: converted,
    }
  ),
}
