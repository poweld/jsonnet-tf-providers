{
  local block = self,
  new(endpoint_name, subnet_ids, workgroup_name):: (
    {}
    + block.with_endpoint_name(endpoint_name)
    + block.with_subnet_ids(subnet_ids)
    + block.with_workgroup_name(workgroup_name)
  ),
  with_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"address" expected to be of type "string"';
    {
      address: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_endpoint_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_name" expected to be of type "string"';
    {
      endpoint_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_owner_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account" expected to be of type "string"';
    {
      owner_account: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
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
  with_vpc_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_endpoint" expected to be of type "list"';
    {
      vpc_endpoint: converted,
    }
  ),
  with_vpc_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_endpoint" expected to be of type "list"';
    {
      vpc_endpoint+: converted,
    }
  ),
  with_vpc_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  with_vpc_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
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
