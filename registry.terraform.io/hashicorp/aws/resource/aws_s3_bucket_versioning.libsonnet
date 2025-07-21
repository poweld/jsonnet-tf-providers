{
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
  with_expected_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_mfa(value):: (
    local converted = value;
    assert std.isString(converted) : '"mfa" expected to be of type "string"';
    {
      mfa: converted,
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
  versioning_configuration:: {
    local block = self,
    new(status):: (
      {}
      + block.with_status(status)
    ),
    with_mfa_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"mfa_delete" expected to be of type "string"';
      {
        mfa_delete: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  with_versioning_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      versioning_configuration: value,
    }
  ),
  with_versioning_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      versioning_configuration+: converted,
    }
  ),
}
