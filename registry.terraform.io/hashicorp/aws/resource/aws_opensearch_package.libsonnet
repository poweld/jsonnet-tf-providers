{
  local block = self,
  new(package_name, package_type):: (
    {}
    + block.with_package_name(package_name)
    + block.with_package_type(package_type)
  ),
  with_available_package_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"available_package_version" expected to be of type "string"';
    {
      available_package_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_package_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_description" expected to be of type "string"';
    {
      package_description: converted,
    }
  ),
  with_package_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_id" expected to be of type "string"';
    {
      package_id: converted,
    }
  ),
  with_package_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_name" expected to be of type "string"';
    {
      package_name: converted,
    }
  ),
  with_package_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_type" expected to be of type "string"';
    {
      package_type: converted,
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
  package_source:: {
    local block = self,
    new(s3_bucket_name, s3_key):: (
      {}
      + block.with_s3_bucket_name(s3_bucket_name)
      + block.with_s3_key(s3_key)
    ),
    with_s3_bucket_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
      {
        s3_bucket_name: converted,
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
  with_package_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      package_source: value,
    }
  ),
  with_package_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      package_source+: converted,
    }
  ),
}
