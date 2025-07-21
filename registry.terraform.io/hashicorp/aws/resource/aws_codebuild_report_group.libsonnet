{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"created" expected to be of type "string"';
    {
      created: converted,
    }
  ),
  with_delete_reports(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_reports" expected to be of type "bool"';
    {
      delete_reports: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  export_config:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    s3_destination:: {
      local block = self,
      new(bucket, encryption_key):: (
        {}
        + block.with_bucket(bucket)
        + block.with_encryption_key(encryption_key)
      ),
      with_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      with_encryption_disabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encryption_disabled" expected to be of type "bool"';
        {
          encryption_disabled: converted,
        }
      ),
      with_encryption_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"encryption_key" expected to be of type "string"';
        {
          encryption_key: converted,
        }
      ),
      with_packaging(value):: (
        local converted = value;
        assert std.isString(converted) : '"packaging" expected to be of type "string"';
        {
          packaging: converted,
        }
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
    },
    with_s3_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination: value,
      }
    ),
    with_s3_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination+: converted,
      }
    ),
  },
  with_export_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      export_config: value,
    }
  ),
  with_export_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      export_config+: converted,
    }
  ),
}
