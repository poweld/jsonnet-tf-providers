{
  local block = self,
  new(instance_id):: (
    {}
    + block.with_instance_id(instance_id)
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
  with_hours_of_operation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hours_of_operation_id" expected to be of type "string"';
    {
      hours_of_operation_id: converted,
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
  with_max_contacts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_contacts" expected to be of type "number"';
    {
      max_contacts: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_outbound_caller_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"outbound_caller_config" expected to be of type "list"';
    {
      outbound_caller_config: converted,
    }
  ),
  with_outbound_caller_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"outbound_caller_config" expected to be of type "list"';
    {
      outbound_caller_config+: converted,
    }
  ),
  with_queue_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"queue_id" expected to be of type "string"';
    {
      queue_id: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
