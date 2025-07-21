{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_expected_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
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
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_properties(value):: (
    local converted = value;
    assert std.isObject(converted) : '"properties" expected to be of type "map"';
    {
      properties: converted,
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
  acl_configuration:: {
    local block = self,
    new(s3_acl_option):: (
      {}
      + block.with_s3_acl_option(s3_acl_option)
    ),
    with_s3_acl_option(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_acl_option" expected to be of type "string"';
      {
        s3_acl_option: converted,
      }
    ),
  },
  encryption_configuration:: {
    local block = self,
    new(encryption_option):: (
      {}
      + block.with_encryption_option(encryption_option)
    ),
    with_encryption_option(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_option" expected to be of type "string"';
      {
        encryption_option: converted,
      }
    ),
    with_kms_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key" expected to be of type "string"';
      {
        kms_key: converted,
      }
    ),
  },
  with_acl_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acl_configuration: value,
    }
  ),
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  with_acl_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acl_configuration+: converted,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
}
