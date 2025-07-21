{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_caller_reference(value):: (
    local converted = value;
    assert std.isString(converted) : '"caller_reference" expected to be of type "string"';
    {
      caller_reference: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_linked_service_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"linked_service_description" expected to be of type "string"';
    {
      linked_service_description: converted,
    }
  ),
  with_linked_service_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"linked_service_principal" expected to be of type "string"';
    {
      linked_service_principal: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_servers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"name_servers" expected to be of type "list"';
    {
      name_servers: converted,
    }
  ),
  with_name_servers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"name_servers" expected to be of type "list"';
    {
      name_servers+: converted,
    }
  ),
  with_primary_name_server(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_name_server" expected to be of type "string"';
    {
      primary_name_server: converted,
    }
  ),
  with_private_zone(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"private_zone" expected to be of type "bool"';
    {
      private_zone: converted,
    }
  ),
  with_resource_record_set_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"resource_record_set_count" expected to be of type "number"';
    {
      resource_record_set_count: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
}
