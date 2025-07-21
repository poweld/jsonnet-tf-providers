{
  local block = self,
  new(label_template, resource_types, sink_identifier):: (
    {}
    + block.with_label_template(label_template)
    + block.with_resource_types(resource_types)
    + block.with_sink_identifier(sink_identifier)
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
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  with_label_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_template" expected to be of type "string"';
    {
      label_template: converted,
    }
  ),
  with_link_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"link_id" expected to be of type "string"';
    {
      link_id: converted,
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
  with_resource_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
    {
      resource_types: converted,
    }
  ),
  with_resource_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
    {
      resource_types+: converted,
    }
  ),
  with_sink_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sink_arn" expected to be of type "string"';
    {
      sink_arn: converted,
    }
  ),
  with_sink_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"sink_identifier" expected to be of type "string"';
    {
      sink_identifier: converted,
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
  link_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    log_group_configuration:: {
      local block = self,
      new(filter):: (
        {}
        + block.with_filter(filter)
      ),
      with_filter(value):: (
        local converted = value;
        assert std.isString(converted) : '"filter" expected to be of type "string"';
        {
          filter: converted,
        }
      ),
    },
    metric_configuration:: {
      local block = self,
      new(filter):: (
        {}
        + block.with_filter(filter)
      ),
      with_filter(value):: (
        local converted = value;
        assert std.isString(converted) : '"filter" expected to be of type "string"';
        {
          filter: converted,
        }
      ),
    },
    with_log_group_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_group_configuration: value,
      }
    ),
    with_metric_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_configuration: value,
      }
    ),
    with_log_group_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_group_configuration+: converted,
      }
    ),
    with_metric_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_configuration+: converted,
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
  with_link_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      link_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_link_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      link_configuration+: converted,
    }
  ),
}
