{
  local block = self,
  new(replication_instance_id):: (
    {}
    + block.with_replication_instance_id(replication_instance_id)
  ),
  with_allocated_storage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocated_storage" expected to be of type "number"';
    {
      allocated_storage: converted,
    }
  ),
  with_auto_minor_version_upgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_multi_az(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
  with_network_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  with_preferred_maintenance_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
    {
      preferred_maintenance_window: converted,
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
  with_replication_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_instance_arn" expected to be of type "string"';
    {
      replication_instance_arn: converted,
    }
  ),
  with_replication_instance_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_instance_class" expected to be of type "string"';
    {
      replication_instance_class: converted,
    }
  ),
  with_replication_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_instance_id" expected to be of type "string"';
    {
      replication_instance_id: converted,
    }
  ),
  with_replication_instance_private_ips(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"replication_instance_private_ips" expected to be of type "list"';
    {
      replication_instance_private_ips: converted,
    }
  ),
  with_replication_instance_private_ips_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"replication_instance_private_ips" expected to be of type "list"';
    {
      replication_instance_private_ips+: converted,
    }
  ),
  with_replication_instance_public_ips(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"replication_instance_public_ips" expected to be of type "list"';
    {
      replication_instance_public_ips: converted,
    }
  ),
  with_replication_instance_public_ips_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"replication_instance_public_ips" expected to be of type "list"';
    {
      replication_instance_public_ips+: converted,
    }
  ),
  with_replication_subnet_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_subnet_group_id" expected to be of type "string"';
    {
      replication_subnet_group_id: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
}
