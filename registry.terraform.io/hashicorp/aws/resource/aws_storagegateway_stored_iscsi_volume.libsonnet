{
  local block = self,
  new(disk_id, gateway_arn, network_interface_id, preserve_existing_data, target_name):: (
    {}
    + block.with_disk_id(disk_id)
    + block.with_gateway_arn(gateway_arn)
    + block.with_network_interface_id(network_interface_id)
    + block.with_preserve_existing_data(preserve_existing_data)
    + block.with_target_name(target_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_chap_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"chap_enabled" expected to be of type "bool"';
    {
      chap_enabled: converted,
    }
  ),
  with_disk_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_id" expected to be of type "string"';
    {
      disk_id: converted,
    }
  ),
  with_gateway_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_arn" expected to be of type "string"';
    {
      gateway_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"kms_encrypted" expected to be of type "bool"';
    {
      kms_encrypted: converted,
    }
  ),
  with_kms_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key" expected to be of type "string"';
    {
      kms_key: converted,
    }
  ),
  with_lun_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"lun_number" expected to be of type "number"';
    {
      lun_number: converted,
    }
  ),
  with_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
    }
  ),
  with_network_interface_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"network_interface_port" expected to be of type "number"';
    {
      network_interface_port: converted,
    }
  ),
  with_preserve_existing_data(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"preserve_existing_data" expected to be of type "bool"';
    {
      preserve_existing_data: converted,
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
  with_snapshot_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_id" expected to be of type "string"';
    {
      snapshot_id: converted,
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
  with_target_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_arn" expected to be of type "string"';
    {
      target_arn: converted,
    }
  ),
  with_target_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_name" expected to be of type "string"';
    {
      target_name: converted,
    }
  ),
  with_volume_attachment_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_attachment_status" expected to be of type "string"';
    {
      volume_attachment_status: converted,
    }
  ),
  with_volume_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_id" expected to be of type "string"';
    {
      volume_id: converted,
    }
  ),
  with_volume_size_in_bytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"volume_size_in_bytes" expected to be of type "number"';
    {
      volume_size_in_bytes: converted,
    }
  ),
  with_volume_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_status" expected to be of type "string"';
    {
      volume_status: converted,
    }
  ),
  with_volume_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_type" expected to be of type "string"';
    {
      volume_type: converted,
    }
  ),
}
