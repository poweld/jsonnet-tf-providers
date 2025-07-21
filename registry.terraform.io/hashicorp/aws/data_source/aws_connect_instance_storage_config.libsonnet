{
  local block = self,
  new(association_id, instance_id, resource_type):: (
    {}
    + block.with_association_id(association_id)
    + block.with_instance_id(instance_id)
    + block.with_resource_type(resource_type)
  ),
  with_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_id" expected to be of type "string"';
    {
      association_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  with_storage_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"storage_config" expected to be of type "list"';
    {
      storage_config: converted,
    }
  ),
  with_storage_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"storage_config" expected to be of type "list"';
    {
      storage_config+: converted,
    }
  ),
}
