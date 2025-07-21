{
  local block = self,
  new(instance_type, name, role_arn):: (
    {}
    + block.with_instance_type(instance_type)
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_additional_code_repositories(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_code_repositories" expected to be of type "set"';
    {
      additional_code_repositories: converted,
    }
  ),
  with_additional_code_repositories_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_code_repositories" expected to be of type "set"';
    {
      additional_code_repositories+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_default_code_repository(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_code_repository" expected to be of type "string"';
    {
      default_code_repository: converted,
    }
  ),
  with_direct_internet_access(value):: (
    local converted = value;
    assert std.isString(converted) : '"direct_internet_access" expected to be of type "string"';
    {
      direct_internet_access: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_lifecycle_config_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"lifecycle_config_name" expected to be of type "string"';
    {
      lifecycle_config_name: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
    }
  ),
  with_platform_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_identifier" expected to be of type "string"';
    {
      platform_identifier: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_root_access(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_access" expected to be of type "string"';
    {
      root_access: converted,
    }
  ),
  with_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  with_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  with_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  with_volume_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
    {
      volume_size: converted,
    }
  ),
  instance_metadata_service_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_minimum_instance_metadata_service_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"minimum_instance_metadata_service_version" expected to be of type "string"';
      {
        minimum_instance_metadata_service_version: converted,
      }
    ),
  },
  with_instance_metadata_service_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_metadata_service_configuration: value,
    }
  ),
  with_instance_metadata_service_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_metadata_service_configuration+: converted,
    }
  ),
}
