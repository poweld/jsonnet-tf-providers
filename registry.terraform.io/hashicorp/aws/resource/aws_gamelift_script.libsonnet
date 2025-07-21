{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  with_zip_file(value):: (
    local converted = value;
    assert std.isString(converted) : '"zip_file" expected to be of type "string"';
    {
      zip_file: converted,
    }
  ),
  storage_location:: {
    local block = self,
    new(bucket, key, role_arn):: (
      {}
      + block.with_bucket(bucket)
      + block.with_key(key)
      + block.with_role_arn(role_arn)
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
    with_object_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_version" expected to be of type "string"';
      {
        object_version: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  with_storage_location(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_location: value,
    }
  ),
  with_storage_location_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_location+: converted,
    }
  ),
}
