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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  rule:: {
    local block = self,
    new():: (
      {}
    ),
    with_bucket_key_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"bucket_key_enabled" expected to be of type "bool"';
      {
        bucket_key_enabled: converted,
      }
    ),
    apply_server_side_encryption_by_default:: {
      local block = self,
      new(sse_algorithm):: (
        {}
        + block.with_sse_algorithm(sse_algorithm)
      ),
      with_kms_master_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_master_key_id" expected to be of type "string"';
        {
          kms_master_key_id: converted,
        }
      ),
      with_sse_algorithm(value):: (
        local converted = value;
        assert std.isString(converted) : '"sse_algorithm" expected to be of type "string"';
        {
          sse_algorithm: converted,
        }
      ),
    },
    with_apply_server_side_encryption_by_default(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        apply_server_side_encryption_by_default: value,
      }
    ),
    with_apply_server_side_encryption_by_default_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        apply_server_side_encryption_by_default+: converted,
      }
    ),
  },
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
