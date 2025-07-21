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
  with_object_lock_enabled(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_lock_enabled" expected to be of type "string"';
    {
      object_lock_enabled: converted,
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
  with_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"token" expected to be of type "string"';
    {
      token: converted,
    }
  ),
  rule:: {
    local block = self,
    new():: (
      {}
    ),
    default_retention:: {
      local block = self,
      new():: (
        {}
      ),
      with_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      with_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"mode" expected to be of type "string"';
        {
          mode: converted,
        }
      ),
      with_years(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"years" expected to be of type "number"';
        {
          years: converted,
        }
      ),
    },
    with_default_retention(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_retention: value,
      }
    ),
    with_default_retention_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_retention+: converted,
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
