{
  local block = self,
  new(engine, engine_version):: (
    {}
    + block.with_engine(engine)
    + block.with_engine_version(engine_version)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
    }
  ),
  with_database_installation_files_s3_bucket_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_installation_files_s3_bucket_name" expected to be of type "string"';
    {
      database_installation_files_s3_bucket_name: converted,
    }
  ),
  with_database_installation_files_s3_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_installation_files_s3_prefix" expected to be of type "string"';
    {
      database_installation_files_s3_prefix: converted,
    }
  ),
  with_db_parameter_group_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_parameter_group_family" expected to be of type "string"';
    {
      db_parameter_group_family: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_filename(value):: (
    local converted = value;
    assert std.isString(converted) : '"filename" expected to be of type "string"';
    {
      filename: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_major_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"major_engine_version" expected to be of type "string"';
    {
      major_engine_version: converted,
    }
  ),
  with_manifest(value):: (
    local converted = value;
    assert std.isString(converted) : '"manifest" expected to be of type "string"';
    {
      manifest: converted,
    }
  ),
  with_manifest_computed(value):: (
    local converted = value;
    assert std.isString(converted) : '"manifest_computed" expected to be of type "string"';
    {
      manifest_computed: converted,
    }
  ),
  with_manifest_hash(value):: (
    local converted = value;
    assert std.isString(converted) : '"manifest_hash" expected to be of type "string"';
    {
      manifest_hash: converted,
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
  with_source_image_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_image_id" expected to be of type "string"';
    {
      source_image_id: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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
