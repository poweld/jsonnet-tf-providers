{
  local block = self,
  new(auth_mode, default_s3_location, engine_security_group_id, name, service_role, subnet_ids, vpc_id, workspace_security_group_id):: (
    {}
    + block.with_auth_mode(auth_mode)
    + block.with_default_s3_location(default_s3_location)
    + block.with_engine_security_group_id(engine_security_group_id)
    + block.with_name(name)
    + block.with_service_role(service_role)
    + block.with_subnet_ids(subnet_ids)
    + block.with_vpc_id(vpc_id)
    + block.with_workspace_security_group_id(workspace_security_group_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auth_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_mode" expected to be of type "string"';
    {
      auth_mode: converted,
    }
  ),
  with_default_s3_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_s3_location" expected to be of type "string"';
    {
      default_s3_location: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_encryption_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_key_arn" expected to be of type "string"';
    {
      encryption_key_arn: converted,
    }
  ),
  with_engine_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_security_group_id" expected to be of type "string"';
    {
      engine_security_group_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idp_auth_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_auth_url" expected to be of type "string"';
    {
      idp_auth_url: converted,
    }
  ),
  with_idp_relay_state_parameter_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_relay_state_parameter_name" expected to be of type "string"';
    {
      idp_relay_state_parameter_name: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_service_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  with_user_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_role" expected to be of type "string"';
    {
      user_role: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_workspace_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_security_group_id" expected to be of type "string"';
    {
      workspace_security_group_id: converted,
    }
  ),
}
