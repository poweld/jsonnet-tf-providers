{
  local block = self,
  new(scrape_configuration):: (
    {}
    + block.with_scrape_configuration(scrape_configuration)
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_scrape_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"scrape_configuration" expected to be of type "string"';
    {
      scrape_configuration: converted,
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
  destination:: {
    local block = self,
    new():: (
      {}
    ),
    amp:: {
      local block = self,
      new(workspace_arn):: (
        {}
        + block.with_workspace_arn(workspace_arn)
      ),
      with_workspace_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"workspace_arn" expected to be of type "string"';
        {
          workspace_arn: converted,
        }
      ),
    },
    with_amp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amp: value,
      }
    ),
    with_amp_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amp+: converted,
      }
    ),
  },
  role_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_source_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_role_arn" expected to be of type "string"';
      {
        source_role_arn: converted,
      }
    ),
    with_target_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_role_arn" expected to be of type "string"';
      {
        target_role_arn: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new():: (
      {}
    ),
    eks:: {
      local block = self,
      new(cluster_arn, subnet_ids):: (
        {}
        + block.with_cluster_arn(cluster_arn)
        + block.with_subnet_ids(subnet_ids)
      ),
      with_cluster_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
        {
          cluster_arn: converted,
        }
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
    with_eks(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eks: value,
      }
    ),
    with_eks_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eks+: converted,
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
  with_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination: value,
    }
  ),
  with_role_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      role_configuration: value,
    }
  ),
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination+: converted,
    }
  ),
  with_role_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      role_configuration+: converted,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}
