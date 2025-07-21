{
  local block = self,
  new():: (
    {}
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  details:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    public_access_block:: {
      local block = self,
      new():: (
        {}
      ),
      with_block_public_acls(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"block_public_acls" expected to be of type "bool"';
        {
          block_public_acls: converted,
        }
      ),
      with_block_public_policy(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"block_public_policy" expected to be of type "bool"';
        {
          block_public_policy: converted,
        }
      ),
      with_ignore_public_acls(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"ignore_public_acls" expected to be of type "bool"';
        {
          ignore_public_acls: converted,
        }
      ),
      with_restrict_public_buckets(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"restrict_public_buckets" expected to be of type "bool"';
        {
          restrict_public_buckets: converted,
        }
      ),
    },
    region:: {
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
      with_bucket_account_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_account_id" expected to be of type "string"';
        {
          bucket_account_id: converted,
        }
      ),
      with_region(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
    },
    with_public_access_block(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        public_access_block: value,
      }
    ),
    with_region(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region: value,
      }
    ),
    with_public_access_block_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        public_access_block+: converted,
      }
    ),
    with_region_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region+: converted,
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
  with_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      details: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      details+: converted,
    }
  ),
}
