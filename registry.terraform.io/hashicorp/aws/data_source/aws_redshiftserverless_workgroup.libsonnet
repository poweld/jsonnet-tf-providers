{
  local block = self,
  new(workgroup_name):: (
    {}
    + block.with_workgroup_name(workgroup_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint" expected to be of type "list"';
    {
      endpoint: converted,
    }
  ),
  with_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint" expected to be of type "list"';
    {
      endpoint+: converted,
    }
  ),
  with_enhanced_vpc_routing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enhanced_vpc_routing" expected to be of type "bool"';
    {
      enhanced_vpc_routing: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_namespace_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_name" expected to be of type "string"';
    {
      namespace_name: converted,
    }
  ),
  with_publicly_accessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
    }
  ),
  with_track_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"track_name" expected to be of type "string"';
    {
      track_name: converted,
    }
  ),
  with_workgroup_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_id" expected to be of type "string"';
    {
      workgroup_id: converted,
    }
  ),
  with_workgroup_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_name" expected to be of type "string"';
    {
      workgroup_name: converted,
    }
  ),
}
