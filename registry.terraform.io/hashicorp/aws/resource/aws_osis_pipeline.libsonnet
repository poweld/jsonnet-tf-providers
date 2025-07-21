{
  local block = self,
  new(max_units, min_units, pipeline_configuration_body, pipeline_name):: (
    {}
    + block.with_max_units(max_units)
    + block.with_min_units(min_units)
    + block.with_pipeline_configuration_body(pipeline_configuration_body)
    + block.with_pipeline_name(pipeline_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ingest_endpoint_urls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ingest_endpoint_urls" expected to be of type "set"';
    {
      ingest_endpoint_urls: converted,
    }
  ),
  with_ingest_endpoint_urls_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ingest_endpoint_urls" expected to be of type "set"';
    {
      ingest_endpoint_urls+: converted,
    }
  ),
  with_max_units(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_units" expected to be of type "number"';
    {
      max_units: converted,
    }
  ),
  with_min_units(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_units" expected to be of type "number"';
    {
      min_units: converted,
    }
  ),
  with_pipeline_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_arn" expected to be of type "string"';
    {
      pipeline_arn: converted,
    }
  ),
  with_pipeline_configuration_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_configuration_body" expected to be of type "string"';
    {
      pipeline_configuration_body: converted,
    }
  ),
  with_pipeline_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_name" expected to be of type "string"';
    {
      pipeline_name: converted,
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
  buffer_options:: {
    local block = self,
    new(persistent_buffer_enabled):: (
      {}
      + block.with_persistent_buffer_enabled(persistent_buffer_enabled)
    ),
    with_persistent_buffer_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"persistent_buffer_enabled" expected to be of type "bool"';
      {
        persistent_buffer_enabled: converted,
      }
    ),
  },
  encryption_at_rest_options:: {
    local block = self,
    new(kms_key_arn):: (
      {}
      + block.with_kms_key_arn(kms_key_arn)
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
  },
  log_publishing_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_is_logging_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"is_logging_enabled" expected to be of type "bool"';
      {
        is_logging_enabled: converted,
      }
    ),
    cloudwatch_log_destination:: {
      local block = self,
      new(log_group):: (
        {}
        + block.with_log_group(log_group)
      ),
      with_log_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group" expected to be of type "string"';
        {
          log_group: converted,
        }
      ),
    },
    with_cloudwatch_log_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_destination: value,
      }
    ),
    with_cloudwatch_log_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_destination+: converted,
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
  vpc_options:: {
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
    with_vpc_endpoint_management(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_endpoint_management" expected to be of type "string"';
      {
        vpc_endpoint_management: converted,
      }
    ),
  },
  with_buffer_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      buffer_options: value,
    }
  ),
  with_encryption_at_rest_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_at_rest_options: value,
    }
  ),
  with_log_publishing_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_publishing_options: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_options: value,
    }
  ),
  with_buffer_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      buffer_options+: converted,
    }
  ),
  with_encryption_at_rest_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_at_rest_options+: converted,
    }
  ),
  with_log_publishing_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_publishing_options+: converted,
    }
  ),
  with_vpc_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_options+: converted,
    }
  ),
}
