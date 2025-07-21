{
  local block = self,
  new(protocol, source):: (
    {}
    + block.with_protocol(protocol)
    + block.with_source(source)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_destination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  with_destination_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
    {
      destination_arn: converted,
    }
  ),
  with_destination_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_ip" expected to be of type "string"';
    {
      destination_ip: converted,
    }
  ),
  with_destination_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"destination_port" expected to be of type "number"';
    {
      destination_port: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  with_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
    }
  ),
  with_source_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_arn" expected to be of type "string"';
    {
      source_arn: converted,
    }
  ),
  with_source_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_ip" expected to be of type "string"';
    {
      source_ip: converted,
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
  filter_at_destination:: {
    local block = self,
    new():: (
      {}
    ),
    with_destination_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_address" expected to be of type "string"';
      {
        destination_address: converted,
      }
    ),
    with_source_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_address" expected to be of type "string"';
      {
        source_address: converted,
      }
    ),
    destination_port_range:: {
      local block = self,
      new():: (
        {}
      ),
      with_from_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      with_to_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    source_port_range:: {
      local block = self,
      new():: (
        {}
      ),
      with_from_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      with_to_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    with_destination_port_range(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_port_range: value,
      }
    ),
    with_source_port_range(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_port_range: value,
      }
    ),
    with_destination_port_range_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_port_range+: converted,
      }
    ),
    with_source_port_range_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_port_range+: converted,
      }
    ),
  },
  filter_at_source:: {
    local block = self,
    new():: (
      {}
    ),
    with_destination_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_address" expected to be of type "string"';
      {
        destination_address: converted,
      }
    ),
    with_source_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_address" expected to be of type "string"';
      {
        source_address: converted,
      }
    ),
    destination_port_range:: {
      local block = self,
      new():: (
        {}
      ),
      with_from_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      with_to_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    source_port_range:: {
      local block = self,
      new():: (
        {}
      ),
      with_from_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      with_to_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    with_destination_port_range(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_port_range: value,
      }
    ),
    with_source_port_range(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_port_range: value,
      }
    ),
    with_destination_port_range_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_port_range+: converted,
      }
    ),
    with_source_port_range_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_port_range+: converted,
      }
    ),
  },
  with_filter_at_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_at_destination: value,
    }
  ),
  with_filter_at_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_at_source: value,
    }
  ),
  with_filter_at_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_at_destination+: converted,
    }
  ),
  with_filter_at_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_at_source+: converted,
    }
  ),
}
