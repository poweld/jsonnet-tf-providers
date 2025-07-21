{
  local block = self,
  new(firehose_arn, output_format, role_arn):: (
    {}
    + block.with_firehose_arn(firehose_arn)
    + block.with_output_format(output_format)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_firehose_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firehose_arn" expected to be of type "string"';
    {
      firehose_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_include_linked_accounts_metrics(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_linked_accounts_metrics" expected to be of type "bool"';
    {
      include_linked_accounts_metrics: converted,
    }
  ),
  with_last_update_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_update_date" expected to be of type "string"';
    {
      last_update_date: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_output_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"output_format" expected to be of type "string"';
    {
      output_format: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  exclude_filter:: {
    local block = self,
    new(namespace):: (
      {}
      + block.with_namespace(namespace)
    ),
    with_metric_names(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metric_names" expected to be of type "set"';
      {
        metric_names: converted,
      }
    ),
    with_metric_names_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metric_names" expected to be of type "set"';
      {
        metric_names+: converted,
      }
    ),
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
  },
  include_filter:: {
    local block = self,
    new(namespace):: (
      {}
      + block.with_namespace(namespace)
    ),
    with_metric_names(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metric_names" expected to be of type "set"';
      {
        metric_names: converted,
      }
    ),
    with_metric_names_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metric_names" expected to be of type "set"';
      {
        metric_names+: converted,
      }
    ),
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
  },
  statistics_configuration:: {
    local block = self,
    new(additional_statistics):: (
      {}
      + block.with_additional_statistics(additional_statistics)
    ),
    with_additional_statistics(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_statistics" expected to be of type "set"';
      {
        additional_statistics: converted,
      }
    ),
    with_additional_statistics_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_statistics" expected to be of type "set"';
      {
        additional_statistics+: converted,
      }
    ),
    include_metric:: {
      local block = self,
      new(metric_name, namespace):: (
        {}
        + block.with_metric_name(metric_name)
        + block.with_namespace(namespace)
      ),
      with_metric_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      with_namespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
    },
    with_include_metric(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        include_metric: value,
      }
    ),
    with_include_metric_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        include_metric+: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_exclude_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_filter: value,
    }
  ),
  with_include_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      include_filter: value,
    }
  ),
  with_statistics_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statistics_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_exclude_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_filter+: converted,
    }
  ),
  with_include_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      include_filter+: converted,
    }
  ),
  with_statistics_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statistics_configuration+: converted,
    }
  ),
}
