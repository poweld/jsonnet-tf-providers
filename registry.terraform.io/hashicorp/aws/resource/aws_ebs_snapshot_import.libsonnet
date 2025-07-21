{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_data_encryption_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_encryption_key_id" expected to be of type "string"';
    {
      data_encryption_key_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_outpost_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
    {
      outpost_arn: converted,
    }
  ),
  with_owner_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_alias" expected to be of type "string"';
    {
      owner_alias: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_permanent_restore(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"permanent_restore" expected to be of type "bool"';
    {
      permanent_restore: converted,
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
  with_role_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_name" expected to be of type "string"';
    {
      role_name: converted,
    }
  ),
  with_storage_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_tier" expected to be of type "string"';
    {
      storage_tier: converted,
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
  with_temporary_restore_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"temporary_restore_days" expected to be of type "number"';
    {
      temporary_restore_days: converted,
    }
  ),
  with_volume_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_id" expected to be of type "string"';
    {
      volume_id: converted,
    }
  ),
  with_volume_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
    {
      volume_size: converted,
    }
  ),
  client_data:: {
    local block = self,
    new():: (
      {}
    ),
    with_comment(value):: (
      local converted = value;
      assert std.isString(converted) : '"comment" expected to be of type "string"';
      {
        comment: converted,
      }
    ),
    with_upload_end(value):: (
      local converted = value;
      assert std.isString(converted) : '"upload_end" expected to be of type "string"';
      {
        upload_end: converted,
      }
    ),
    with_upload_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"upload_size" expected to be of type "number"';
      {
        upload_size: converted,
      }
    ),
    with_upload_start(value):: (
      local converted = value;
      assert std.isString(converted) : '"upload_start" expected to be of type "string"';
      {
        upload_start: converted,
      }
    ),
  },
  disk_container:: {
    local block = self,
    new(format):: (
      {}
      + block.with_format(format)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"format" expected to be of type "string"';
      {
        format: converted,
      }
    ),
    with_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
    user_bucket:: {
      local block = self,
      new(s3_bucket, s3_key):: (
        {}
        + block.with_s3_bucket(s3_bucket)
        + block.with_s3_key(s3_key)
      ),
      with_s3_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
        {
          s3_bucket: converted,
        }
      ),
      with_s3_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_key" expected to be of type "string"';
        {
          s3_key: converted,
        }
      ),
    },
    with_user_bucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_bucket: value,
      }
    ),
    with_user_bucket_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_bucket+: converted,
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
  },
  with_client_data(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_data: value,
    }
  ),
  with_disk_container(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_container: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_client_data_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_data+: converted,
    }
  ),
  with_disk_container_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_container+: converted,
    }
  ),
}
