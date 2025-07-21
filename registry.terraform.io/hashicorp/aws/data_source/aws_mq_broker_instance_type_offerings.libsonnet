{
  local block = self,
  new():: (
    {}
  ),
  with_broker_instance_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"broker_instance_options" expected to be of type "list"';
    {
      broker_instance_options: converted,
    }
  ),
  with_broker_instance_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"broker_instance_options" expected to be of type "list"';
    {
      broker_instance_options+: converted,
    }
  ),
  with_engine_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
    }
  ),
  with_host_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_instance_type" expected to be of type "string"';
    {
      host_instance_type: converted,
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
  with_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
    }
  ),
}
