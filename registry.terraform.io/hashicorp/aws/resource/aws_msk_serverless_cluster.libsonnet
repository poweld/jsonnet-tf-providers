{
  local block = self,
  new(cluster_name):: (
    {}
    + block.with_cluster_name(cluster_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bootstrap_brokers_sasl_iam(value):: (
    local converted = value;
    assert std.isString(converted) : '"bootstrap_brokers_sasl_iam" expected to be of type "string"';
    {
      bootstrap_brokers_sasl_iam: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  with_cluster_uuid(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_uuid" expected to be of type "string"';
    {
      cluster_uuid: converted,
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
  client_authentication:: {
    local block = self,
    new():: (
      {}
    ),
    sasl:: {
      local block = self,
      new():: (
        {}
      ),
      iam:: {
        local block = self,
        new(enabled):: (
          {}
          + block.with_enabled(enabled)
        ),
        with_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      with_iam(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iam: value,
        }
      ),
      with_iam_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iam+: converted,
        }
      ),
    },
    with_sasl(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sasl: value,
      }
    ),
    with_sasl_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sasl+: converted,
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
  vpc_config:: {
    local block = self,
    new(subnet_ids):: (
      {}
      + block.with_subnet_ids(subnet_ids)
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  with_client_authentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_authentication: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_client_authentication_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_authentication+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
