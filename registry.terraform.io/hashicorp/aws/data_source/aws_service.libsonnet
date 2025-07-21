{
  local block = self,
  new():: (
    {}
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_partition(value):: (
    local converted = value;
    assert std.isString(converted) : '"partition" expected to be of type "string"';
    {
      partition: converted,
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
  with_reverse_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"reverse_dns_name" expected to be of type "string"';
    {
      reverse_dns_name: converted,
    }
  ),
  with_reverse_dns_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"reverse_dns_prefix" expected to be of type "string"';
    {
      reverse_dns_prefix: converted,
    }
  ),
  with_service_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_id" expected to be of type "string"';
    {
      service_id: converted,
    }
  ),
  with_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supported" expected to be of type "bool"';
    {
      supported: converted,
    }
  ),
}
