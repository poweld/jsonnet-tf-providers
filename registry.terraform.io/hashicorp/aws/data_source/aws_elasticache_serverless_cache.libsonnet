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
  with_cache_usage_limits(value):: (
    local converted = value;
    assert std.isObject(converted) : '"cache_usage_limits" expected to be of type "object"';
    {
      cache_usage_limits: converted,
    }
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
    }
  ),
  with_daily_snapshot_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_snapshot_time" expected to be of type "string"';
    {
      daily_snapshot_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isObject(converted) : '"endpoint" expected to be of type "object"';
    {
      endpoint: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_full_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"full_engine_version" expected to be of type "string"';
    {
      full_engine_version: converted,
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
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_reader_endpoint(value):: (
    local converted = value;
    assert std.isObject(converted) : '"reader_endpoint" expected to be of type "object"';
    {
      reader_endpoint: converted,
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
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
    {
      security_group_ids+: converted,
    }
  ),
  with_snapshot_retention_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"snapshot_retention_limit" expected to be of type "number"';
    {
      snapshot_retention_limit: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids+: converted,
    }
  ),
  with_user_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_group_id" expected to be of type "string"';
    {
      user_group_id: converted,
    }
  ),
}
