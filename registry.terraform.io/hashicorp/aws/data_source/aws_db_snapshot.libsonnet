{
  local block = self,
  new():: (
    {}
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
  with_db_instance_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_identifier" expected to be of type "string"';
    {
      db_instance_identifier: converted,
    }
  ),
  with_db_snapshot_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_snapshot_arn" expected to be of type "string"';
    {
      db_snapshot_arn: converted,
    }
  ),
  with_db_snapshot_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_snapshot_identifier" expected to be of type "string"';
    {
      db_snapshot_identifier: converted,
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
  with_include_public(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_public" expected to be of type "bool"';
    {
      include_public: converted,
    }
  ),
  with_include_shared(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_shared" expected to be of type "bool"';
    {
      include_shared: converted,
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
  with_most_recent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"most_recent" expected to be of type "bool"';
    {
      most_recent: converted,
    }
  ),
  with_option_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"option_group_name" expected to be of type "string"';
    {
      option_group_name: converted,
    }
  ),
  with_original_snapshot_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"original_snapshot_create_time" expected to be of type "string"';
    {
      original_snapshot_create_time: converted,
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
  with_snapshot_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_create_time" expected to be of type "string"';
    {
      snapshot_create_time: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
}
