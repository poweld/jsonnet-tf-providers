{
  local block = self,
  new(gateway_arn):: (
    {}
    + block.with_gateway_arn(gateway_arn)
  ),
  with_disk_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_id" expected to be of type "string"';
    {
      disk_id: converted,
    }
  ),
  with_disk_node(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_node" expected to be of type "string"';
    {
      disk_node: converted,
    }
  ),
  with_disk_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_path" expected to be of type "string"';
    {
      disk_path: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
}
