{
  local block = self,
  new(pool_name, storage_class):: (
    {}
    + block.with_pool_name(pool_name)
    + block.with_storage_class(storage_class)
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
  with_pool_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"pool_name" expected to be of type "string"';
    {
      pool_name: converted,
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
  with_retention_lock_time_in_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_lock_time_in_days" expected to be of type "number"';
    {
      retention_lock_time_in_days: converted,
    }
  ),
  with_retention_lock_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"retention_lock_type" expected to be of type "string"';
    {
      retention_lock_type: converted,
    }
  ),
  with_storage_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_class" expected to be of type "string"';
    {
      storage_class: converted,
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
}
