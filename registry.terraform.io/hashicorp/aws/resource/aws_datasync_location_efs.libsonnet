{
  local block = self,
  new(efs_file_system_arn):: (
    {}
    + block.with_efs_file_system_arn(efs_file_system_arn)
  ),
  with_access_point_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_point_arn" expected to be of type "string"';
    {
      access_point_arn: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_efs_file_system_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"efs_file_system_arn" expected to be of type "string"';
    {
      efs_file_system_arn: converted,
    }
  ),
  with_file_system_access_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_access_role_arn" expected to be of type "string"';
    {
      file_system_access_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_in_transit_encryption(value):: (
    local converted = value;
    assert std.isString(converted) : '"in_transit_encryption" expected to be of type "string"';
    {
      in_transit_encryption: converted,
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
  with_subdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
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
  with_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
  ec2_config:: {
    local block = self,
    new(security_group_arns, subnet_arn):: (
      {}
      + block.with_security_group_arns(security_group_arns)
      + block.with_subnet_arn(subnet_arn)
    ),
    with_security_group_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_arns" expected to be of type "set"';
      {
        security_group_arns: converted,
      }
    ),
    with_security_group_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_arns" expected to be of type "set"';
      {
        security_group_arns+: converted,
      }
    ),
    with_subnet_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_arn" expected to be of type "string"';
      {
        subnet_arn: converted,
      }
    ),
  },
  with_ec2_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_config: value,
    }
  ),
  with_ec2_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_config+: converted,
    }
  ),
}
