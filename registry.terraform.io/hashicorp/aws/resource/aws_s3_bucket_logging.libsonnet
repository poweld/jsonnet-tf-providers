{
  local block = self,
  new(bucket, target_bucket, target_prefix):: (
    {}
    + block.with_bucket(bucket)
    + block.with_target_bucket(target_bucket)
    + block.with_target_prefix(target_prefix)
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
  with_target_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_bucket" expected to be of type "string"';
    {
      target_bucket: converted,
    }
  ),
  with_target_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_prefix" expected to be of type "string"';
    {
      target_prefix: converted,
    }
  ),
  target_grant:: {
    local block = self,
    new(permission):: (
      {}
      + block.with_permission(permission)
    ),
    with_permission(value):: (
      local converted = value;
      assert std.isString(converted) : '"permission" expected to be of type "string"';
      {
        permission: converted,
      }
    ),
    grantee:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_display_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"display_name" expected to be of type "string"';
        {
          display_name: converted,
        }
      ),
      with_email_address(value):: (
        local converted = value;
        assert std.isString(converted) : '"email_address" expected to be of type "string"';
        {
          email_address: converted,
        }
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      with_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"uri" expected to be of type "string"';
        {
          uri: converted,
        }
      ),
    },
    with_grantee(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grantee: value,
      }
    ),
    with_grantee_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grantee+: converted,
      }
    ),
  },
  target_object_key_format:: {
    local block = self,
    new():: (
      {}
    ),
    partitioned_prefix:: {
      local block = self,
      new(partition_date_source):: (
        {}
        + block.with_partition_date_source(partition_date_source)
      ),
      with_partition_date_source(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition_date_source" expected to be of type "string"';
        {
          partition_date_source: converted,
        }
      ),
    },
    simple_prefix:: {
      local block = self,
      new():: (
        {}
      ),
    },
    with_partitioned_prefix(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        partitioned_prefix: value,
      }
    ),
    with_simple_prefix(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        simple_prefix: value,
      }
    ),
    with_partitioned_prefix_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        partitioned_prefix+: converted,
      }
    ),
    with_simple_prefix_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        simple_prefix+: converted,
      }
    ),
  },
  with_target_grant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_grant: value,
    }
  ),
  with_target_object_key_format(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_object_key_format: value,
    }
  ),
  with_target_grant_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_grant+: converted,
    }
  ),
  with_target_object_key_format_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_object_key_format+: converted,
    }
  ),
}
