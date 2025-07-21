{
  local block = self,
  new(data_set_id):: (
    {}
    + block.with_data_set_id(data_set_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_data_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
    }
  ),
  with_finalized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"finalized" expected to be of type "bool"';
    {
      finalized: converted,
    }
  ),
  with_force_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  asset:: {
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
    with_created_at(value):: (
      local converted = value;
      assert std.isString(converted) : '"created_at" expected to be of type "string"';
      {
        created_at: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_updated_at(value):: (
      local converted = value;
      assert std.isString(converted) : '"updated_at" expected to be of type "string"';
      {
        updated_at: converted,
      }
    ),
    create_s3_data_access_from_s3_bucket:: {
      local block = self,
      new():: (
        {}
      ),
      with_access_point_alias(value):: (
        local converted = value;
        assert std.isString(converted) : '"access_point_alias" expected to be of type "string"';
        {
          access_point_alias: converted,
        }
      ),
      with_access_point_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"access_point_arn" expected to be of type "string"';
        {
          access_point_arn: converted,
        }
      ),
      asset_source:: {
        local block = self,
        new(bucket):: (
          {}
          + block.with_bucket(bucket)
        ),
        with_bucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        with_key_prefixes(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_prefixes" expected to be of type "set"';
          {
            key_prefixes: converted,
          }
        ),
        with_key_prefixes_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_prefixes" expected to be of type "set"';
          {
            key_prefixes+: converted,
          }
        ),
        with_keys(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"keys" expected to be of type "set"';
          {
            keys: converted,
          }
        ),
        with_keys_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"keys" expected to be of type "set"';
          {
            keys+: converted,
          }
        ),
        kms_keys_to_grant:: {
          local block = self,
          new(kms_key_arn):: (
            {}
            + block.with_kms_key_arn(kms_key_arn)
          ),
          with_kms_key_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
            {
              kms_key_arn: converted,
            }
          ),
        },
        with_kms_keys_to_grant(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kms_keys_to_grant: value,
          }
        ),
        with_kms_keys_to_grant_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kms_keys_to_grant+: converted,
          }
        ),
      },
      with_asset_source(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          asset_source: value,
        }
      ),
      with_asset_source_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          asset_source+: converted,
        }
      ),
    },
    import_assets_from_s3:: {
      local block = self,
      new():: (
        {}
      ),
      asset_source:: {
        local block = self,
        new(bucket, key):: (
          {}
          + block.with_bucket(bucket)
          + block.with_key(key)
        ),
        with_bucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
      },
      with_asset_source(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          asset_source: value,
        }
      ),
      with_asset_source_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          asset_source+: converted,
        }
      ),
    },
    import_assets_from_signed_url:: {
      local block = self,
      new(filename):: (
        {}
        + block.with_filename(filename)
      ),
      with_filename(value):: (
        local converted = value;
        assert std.isString(converted) : '"filename" expected to be of type "string"';
        {
          filename: converted,
        }
      ),
    },
    with_create_s3_data_access_from_s3_bucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        create_s3_data_access_from_s3_bucket: value,
      }
    ),
    with_import_assets_from_s3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        import_assets_from_s3: value,
      }
    ),
    with_import_assets_from_signed_url(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        import_assets_from_signed_url: value,
      }
    ),
    with_create_s3_data_access_from_s3_bucket_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        create_s3_data_access_from_s3_bucket+: converted,
      }
    ),
    with_import_assets_from_s3_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        import_assets_from_s3+: converted,
      }
    ),
    with_import_assets_from_signed_url_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        import_assets_from_signed_url+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  with_asset(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      asset: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_asset_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      asset+: converted,
    }
  ),
}
