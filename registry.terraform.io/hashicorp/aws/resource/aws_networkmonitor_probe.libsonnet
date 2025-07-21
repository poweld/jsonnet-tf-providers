{
  local block = self,
  new(destination, monitor_name, protocol, source_arn):: (
    {}
    + block.with_destination(destination)
    + block.with_monitor_name(monitor_name)
    + block.with_protocol(protocol)
    + block.with_source_arn(source_arn)
  ),
  with_address_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_family" expected to be of type "string"';
    {
      address_family: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_destination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  with_destination_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"destination_port" expected to be of type "number"';
    {
      destination_port: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_monitor_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_name" expected to be of type "string"';
    {
      monitor_name: converted,
    }
  ),
  with_packet_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"packet_size" expected to be of type "number"';
    {
      packet_size: converted,
    }
  ),
  with_probe_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"probe_id" expected to be of type "string"';
    {
      probe_id: converted,
    }
  ),
  with_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  with_source_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_arn" expected to be of type "string"';
    {
      source_arn: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
}
