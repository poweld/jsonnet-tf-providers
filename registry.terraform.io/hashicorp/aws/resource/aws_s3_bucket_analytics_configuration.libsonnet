{
  local block = self,
  new(bucket, name):: (
    {}
    + block.with_bucket(bucket)
    + block.with_name(name)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  filter:: {
    local block = self,
    new():: (
      {}
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    with_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
  },
  storage_class_analysis:: {
    local block = self,
    new():: (
      {}
    ),
    data_export:: {
      local block = self,
      new():: (
        {}
      ),
      with_output_schema_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_schema_version" expected to be of type "string"';
        {
          output_schema_version: converted,
        }
      ),
      destination:: {
        local block = self,
        new():: (
          {}
        ),
        s3_bucket_destination:: {
          local block = self,
          new(bucket_arn):: (
            {}
            + block.with_bucket_arn(bucket_arn)
          ),
          with_bucket_account_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_account_id" expected to be of type "string"';
            {
              bucket_account_id: converted,
            }
          ),
          with_bucket_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
            {
              bucket_arn: converted,
            }
          ),
          with_format(value):: (
            local converted = value;
            assert std.isString(converted) : '"format" expected to be of type "string"';
            {
              format: converted,
            }
          ),
          with_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"prefix" expected to be of type "string"';
            {
              prefix: converted,
            }
          ),
        },
        with_s3_bucket_destination(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_bucket_destination: value,
          }
        ),
        with_s3_bucket_destination_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_bucket_destination+: converted,
          }
        ),
      },
      with_destination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination: value,
        }
      ),
      with_destination_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination+: converted,
        }
      ),
    },
    with_data_export(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_export: value,
      }
    ),
    with_data_export_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_export+: converted,
      }
    ),
  },
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_storage_class_analysis(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_class_analysis: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
  with_storage_class_analysis_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_class_analysis+: converted,
    }
  ),
}
