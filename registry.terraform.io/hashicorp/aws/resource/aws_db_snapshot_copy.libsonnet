{
  local block = self,
  new(source_db_snapshot_identifier, target_db_snapshot_identifier):: (
    {}
    + block.with_source_db_snapshot_identifier(source_db_snapshot_identifier)
    + block.with_target_db_snapshot_identifier(target_db_snapshot_identifier)
  ),
  with_allocated_storage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocated_storage" expected to be of type "number"';
    {
      allocated_storage: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_copy_tags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags" expected to be of type "bool"';
    {
      copy_tags: converted,
    }
  ),
  with_db_snapshot_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_snapshot_arn" expected to be of type "string"';
    {
      db_snapshot_arn: converted,
    }
  ),
  with_destination_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_region" expected to be of type "string"';
    {
      destination_region: converted,
    }
  ),
  with_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
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
  with_iops(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"iops" expected to be of type "number"';
    {
      iops: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_license_model(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_model" expected to be of type "string"';
    {
      license_model: converted,
    }
  ),
  with_option_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"option_group_name" expected to be of type "string"';
    {
      option_group_name: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  with_presigned_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"presigned_url" expected to be of type "string"';
    {
      presigned_url: converted,
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
  with_shared_accounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shared_accounts" expected to be of type "set"';
    {
      shared_accounts: converted,
    }
  ),
  with_shared_accounts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shared_accounts" expected to be of type "set"';
    {
      shared_accounts+: converted,
    }
  ),
  with_snapshot_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_type" expected to be of type "string"';
    {
      snapshot_type: converted,
    }
  ),
  with_source_db_snapshot_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_db_snapshot_identifier" expected to be of type "string"';
    {
      source_db_snapshot_identifier: converted,
    }
  ),
  with_source_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_region" expected to be of type "string"';
    {
      source_region: converted,
    }
  ),
  with_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
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
  with_target_custom_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_custom_availability_zone" expected to be of type "string"';
    {
      target_custom_availability_zone: converted,
    }
  ),
  with_target_db_snapshot_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_db_snapshot_identifier" expected to be of type "string"';
    {
      target_db_snapshot_identifier: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
