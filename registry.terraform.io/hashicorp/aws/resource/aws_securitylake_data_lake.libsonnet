{
  local block = self,
  new(meta_store_manager_role_arn):: (
    {}
    + block.with_meta_store_manager_role_arn(meta_store_manager_role_arn)
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
  with_meta_store_manager_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"meta_store_manager_role_arn" expected to be of type "string"';
    {
      meta_store_manager_role_arn: converted,
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
  with_s3_bucket_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_arn" expected to be of type "string"';
    {
      s3_bucket_arn: converted,
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
  configuration:: {
    local block = self,
    new(region):: (
      {}
      + block.with_region(region)
    ),
    with_encryption_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
      {
        encryption_configuration: converted,
      }
    ),
    with_encryption_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
      {
        encryption_configuration+: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    lifecycle_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      expiration:: {
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
      },
      transition:: {
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
        with_storage_class(value):: (
          local converted = value;
          assert std.isString(converted) : '"storage_class" expected to be of type "string"';
          {
            storage_class: converted,
          }
        ),
      },
      with_expiration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          expiration: value,
        }
      ),
      with_transition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          transition: value,
        }
      ),
      with_expiration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          expiration+: converted,
        }
      ),
      with_transition_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          transition+: converted,
        }
      ),
    },
    replication_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_regions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions: converted,
        }
      ),
      with_regions_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions+: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    with_lifecycle_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle_configuration: value,
      }
    ),
    with_replication_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        replication_configuration: value,
      }
    ),
    with_lifecycle_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle_configuration+: converted,
      }
    ),
    with_replication_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        replication_configuration+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
