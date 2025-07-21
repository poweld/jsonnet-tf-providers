{
  local block = self,
  new(index_id, name, role_arn):: (
    {}
    + block.with_index_id(index_id)
    + block.with_name(name)
    + block.with_role_arn(role_arn)
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
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_error_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"error_message" expected to be of type "string"';
    {
      error_message: converted,
    }
  ),
  with_faq_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"faq_id" expected to be of type "string"';
    {
      faq_id: converted,
    }
  ),
  with_file_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_format" expected to be of type "string"';
    {
      file_format: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_index_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
    }
  ),
  with_language_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  s3_path:: {
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
  with_s3_path(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_path: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_s3_path_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_path+: converted,
    }
  ),
}
