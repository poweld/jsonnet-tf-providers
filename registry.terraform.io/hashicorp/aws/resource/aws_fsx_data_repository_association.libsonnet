{
  local block = self,
  new(data_repository_path, file_system_id, file_system_path):: (
    {}
    + block.with_data_repository_path(data_repository_path)
    + block.with_file_system_id(file_system_id)
    + block.with_file_system_path(file_system_path)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_id" expected to be of type "string"';
    {
      association_id: converted,
    }
  ),
  with_batch_import_meta_data_on_create(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"batch_import_meta_data_on_create" expected to be of type "bool"';
    {
      batch_import_meta_data_on_create: converted,
    }
  ),
  with_data_repository_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_repository_path" expected to be of type "string"';
    {
      data_repository_path: converted,
    }
  ),
  with_delete_data_in_filesystem(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_data_in_filesystem" expected to be of type "bool"';
    {
      delete_data_in_filesystem: converted,
    }
  ),
  with_file_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
    }
  ),
  with_file_system_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_path" expected to be of type "string"';
    {
      file_system_path: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_imported_file_chunk_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"imported_file_chunk_size" expected to be of type "number"';
    {
      imported_file_chunk_size: converted,
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
  s3:: {
    local block = self,
    new():: (
      {}
    ),
    auto_export_policy:: {
      local block = self,
      new():: (
        {}
      ),
      with_events(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"events" expected to be of type "list"';
        {
          events: converted,
        }
      ),
      with_events_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"events" expected to be of type "list"';
        {
          events+: converted,
        }
      ),
    },
    auto_import_policy:: {
      local block = self,
      new():: (
        {}
      ),
      with_events(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"events" expected to be of type "list"';
        {
          events: converted,
        }
      ),
      with_events_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"events" expected to be of type "list"';
        {
          events+: converted,
        }
      ),
    },
    with_auto_export_policy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_export_policy: value,
      }
    ),
    with_auto_import_policy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_import_policy: value,
      }
    ),
    with_auto_export_policy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_export_policy+: converted,
      }
    ),
    with_auto_import_policy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_import_policy+: converted,
      }
    ),
  },
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
  with_s3(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_s3_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3+: converted,
    }
  ),
}
