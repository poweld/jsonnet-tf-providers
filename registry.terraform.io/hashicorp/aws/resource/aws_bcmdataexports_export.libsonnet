{
  local block = self,
  new():: (
    {}
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
  export:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_export_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_arn" expected to be of type "string"';
      {
        export_arn: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    data_query:: {
      local block = self,
      new(query_statement):: (
        {}
        + block.with_query_statement(query_statement)
      ),
      with_query_statement(value):: (
        local converted = value;
        assert std.isString(converted) : '"query_statement" expected to be of type "string"';
        {
          query_statement: converted,
        }
      ),
      with_table_configurations(value):: (
        local converted = value;
        assert std.isObject(converted) : '"table_configurations" expected to be of type "map"';
        {
          table_configurations: converted,
        }
      ),
    },
    destination_configurations:: {
      local block = self,
      new():: (
        {}
      ),
      s3_destination:: {
        local block = self,
        new(s3_bucket, s3_prefix, s3_region):: (
          {}
          + block.with_s3_bucket(s3_bucket)
          + block.with_s3_prefix(s3_prefix)
          + block.with_s3_region(s3_region)
        ),
        with_s3_bucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
          {
            s3_bucket: converted,
          }
        ),
        with_s3_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
          {
            s3_prefix: converted,
          }
        ),
        with_s3_region(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_region" expected to be of type "string"';
          {
            s3_region: converted,
          }
        ),
        s3_output_configurations:: {
          local block = self,
          new(compression, format, output_type, overwrite):: (
            {}
            + block.with_compression(compression)
            + block.with_format(format)
            + block.with_output_type(output_type)
            + block.with_overwrite(overwrite)
          ),
          with_compression(value):: (
            local converted = value;
            assert std.isString(converted) : '"compression" expected to be of type "string"';
            {
              compression: converted,
            }
          ),
          with_format(value):: (
            local converted = value;
            assert std.isString(converted) : '"format" expected to be of type "string"';
            {
              format: converted,
            }
          ),
          with_output_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"output_type" expected to be of type "string"';
            {
              output_type: converted,
            }
          ),
          with_overwrite(value):: (
            local converted = value;
            assert std.isString(converted) : '"overwrite" expected to be of type "string"';
            {
              overwrite: converted,
            }
          ),
        },
        with_s3_output_configurations(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_configurations: value,
          }
        ),
        with_s3_output_configurations_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_configurations+: converted,
          }
        ),
      },
      with_s3_destination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_destination: value,
        }
      ),
      with_s3_destination_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_destination+: converted,
        }
      ),
    },
    refresh_cadence:: {
      local block = self,
      new(frequency):: (
        {}
        + block.with_frequency(frequency)
      ),
      with_frequency(value):: (
        local converted = value;
        assert std.isString(converted) : '"frequency" expected to be of type "string"';
        {
          frequency: converted,
        }
      ),
    },
    with_data_query(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_query: value,
      }
    ),
    with_destination_configurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_configurations: value,
      }
    ),
    with_refresh_cadence(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        refresh_cadence: value,
      }
    ),
    with_data_query_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_query+: converted,
      }
    ),
    with_destination_configurations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_configurations+: converted,
      }
    ),
    with_refresh_cadence_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        refresh_cadence+: converted,
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
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_export(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      export: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_export_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      export+: converted,
    }
  ),
}
