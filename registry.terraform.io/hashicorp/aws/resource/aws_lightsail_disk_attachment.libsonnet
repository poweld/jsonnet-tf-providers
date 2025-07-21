{
  local block = self,
  new(disk_name, disk_path, instance_name):: (
    {}
    + block.with_disk_name(disk_name)
    + block.with_disk_path(disk_path)
    + block.with_instance_name(instance_name)
  ),
  with_disk_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_name" expected to be of type "string"';
    {
      disk_name: converted,
    }
  ),
  with_disk_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_path" expected to be of type "string"';
    {
      disk_path: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_name" expected to be of type "string"';
    {
      instance_name: converted,
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
