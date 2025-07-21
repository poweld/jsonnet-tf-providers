{
  local block = self,
  new(name, project_arn):: (
    {}
    + block.with_name(name)
    + block.with_project_arn(project_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_downlink_bandwidth_bits(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"downlink_bandwidth_bits" expected to be of type "number"';
    {
      downlink_bandwidth_bits: converted,
    }
  ),
  with_downlink_delay_ms(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"downlink_delay_ms" expected to be of type "number"';
    {
      downlink_delay_ms: converted,
    }
  ),
  with_downlink_jitter_ms(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"downlink_jitter_ms" expected to be of type "number"';
    {
      downlink_jitter_ms: converted,
    }
  ),
  with_downlink_loss_percent(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"downlink_loss_percent" expected to be of type "number"';
    {
      downlink_loss_percent: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_project_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_arn" expected to be of type "string"';
    {
      project_arn: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_uplink_bandwidth_bits(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"uplink_bandwidth_bits" expected to be of type "number"';
    {
      uplink_bandwidth_bits: converted,
    }
  ),
  with_uplink_delay_ms(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"uplink_delay_ms" expected to be of type "number"';
    {
      uplink_delay_ms: converted,
    }
  ),
  with_uplink_jitter_ms(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"uplink_jitter_ms" expected to be of type "number"';
    {
      uplink_jitter_ms: converted,
    }
  ),
  with_uplink_loss_percent(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"uplink_loss_percent" expected to be of type "number"';
    {
      uplink_loss_percent: converted,
    }
  ),
}
