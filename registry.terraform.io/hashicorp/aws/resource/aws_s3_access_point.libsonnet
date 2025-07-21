{
  local block = self,
  new(bucket, name):: (
    {}
    + block.with_bucket(bucket)
    + block.with_name(name)
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
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_endpoints(value):: (
    local converted = value;
    assert std.isObject(converted) : '"endpoints" expected to be of type "map"';
    {
      endpoints: converted,
    }
  ),
  with_has_public_access_policy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_public_access_policy" expected to be of type "bool"';
    {
      has_public_access_policy: converted,
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
  with_network_origin(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_origin" expected to be of type "string"';
    {
      network_origin: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  public_access_block_configuration:: {
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
  vpc_configuration:: {
    local block = self,
    new(vpc_id):: (
      {}
      + block.with_vpc_id(vpc_id)
    ),
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  with_public_access_block_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_access_block_configuration: value,
    }
  ),
  with_vpc_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration: value,
    }
  ),
  with_public_access_block_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_access_block_configuration+: converted,
    }
  ),
  with_vpc_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration+: converted,
    }
  ),
}
