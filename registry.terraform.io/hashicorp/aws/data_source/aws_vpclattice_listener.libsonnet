{
  local block = self,
  new(listener_identifier, service_identifier):: (
    {}
    + block.with_listener_identifier(listener_identifier)
    + block.with_service_identifier(service_identifier)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_default_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"default_action" expected to be of type "list"';
    {
      default_action: converted,
    }
  ),
  with_default_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"default_action" expected to be of type "list"';
    {
      default_action+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_at" expected to be of type "string"';
    {
      last_updated_at: converted,
    }
  ),
  with_listener_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_id" expected to be of type "string"';
    {
      listener_id: converted,
    }
  ),
  with_listener_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_identifier" expected to be of type "string"';
    {
      listener_identifier: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
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
  with_service_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_arn" expected to be of type "string"';
    {
      service_arn: converted,
    }
  ),
  with_service_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_id" expected to be of type "string"';
    {
      service_id: converted,
    }
  ),
  with_service_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_identifier" expected to be of type "string"';
    {
      service_identifier: converted,
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
