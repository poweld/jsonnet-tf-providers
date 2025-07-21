{
  local block = self,
  new(bandwidth, location, name):: (
    {}
    + block.with_bandwidth(bandwidth)
    + block.with_location(location)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_device(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_device" expected to be of type "string"';
    {
      aws_device: converted,
    }
  ),
  with_bandwidth(value):: (
    local converted = value;
    assert std.isString(converted) : '"bandwidth" expected to be of type "string"';
    {
      bandwidth: converted,
    }
  ),
  with_encryption_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_mode" expected to be of type "string"';
    {
      encryption_mode: converted,
    }
  ),
  with_has_logical_redundancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"has_logical_redundancy" expected to be of type "string"';
    {
      has_logical_redundancy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_jumbo_frame_capable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"jumbo_frame_capable" expected to be of type "bool"';
    {
      jumbo_frame_capable: converted,
    }
  ),
  with_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"location" expected to be of type "string"';
    {
      location: converted,
    }
  ),
  with_macsec_capable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"macsec_capable" expected to be of type "bool"';
    {
      macsec_capable: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
    }
  ),
  with_partner_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"partner_name" expected to be of type "string"';
    {
      partner_name: converted,
    }
  ),
  with_port_encryption_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"port_encryption_status" expected to be of type "string"';
    {
      port_encryption_status: converted,
    }
  ),
  with_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
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
  with_request_macsec(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"request_macsec" expected to be of type "bool"';
    {
      request_macsec: converted,
    }
  ),
  with_skip_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
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
  with_vlan_id(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"vlan_id" expected to be of type "number"';
    {
      vlan_id: converted,
    }
  ),
}
