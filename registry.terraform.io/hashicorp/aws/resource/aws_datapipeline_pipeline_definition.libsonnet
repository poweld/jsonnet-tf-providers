{
  local block = self,
  new(pipeline_id):: (
    {}
    + block.with_pipeline_id(pipeline_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_pipeline_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_id" expected to be of type "string"';
    {
      pipeline_id: converted,
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
  parameter_object:: {
    local block = self,
    new(id):: (
      {}
      + block.with_id(id)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    attribute:: {
      local block = self,
      new(key, string_value):: (
        {}
        + block.with_key(key)
        + block.with_string_value(string_value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_string_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"string_value" expected to be of type "string"';
        {
          string_value: converted,
        }
      ),
    },
    with_attribute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute: value,
      }
    ),
    with_attribute_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute+: converted,
      }
    ),
  },
  parameter_value:: {
    local block = self,
    new(id, string_value):: (
      {}
      + block.with_id(id)
      + block.with_string_value(string_value)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_string_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"string_value" expected to be of type "string"';
      {
        string_value: converted,
      }
    ),
  },
  pipeline_object:: {
    local block = self,
    new(id, name):: (
      {}
      + block.with_id(id)
      + block.with_name(name)
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
    field:: {
      local block = self,
      new(key):: (
        {}
        + block.with_key(key)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_ref_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"ref_value" expected to be of type "string"';
        {
          ref_value: converted,
        }
      ),
      with_string_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"string_value" expected to be of type "string"';
        {
          string_value: converted,
        }
      ),
    },
    with_field(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field: value,
      }
    ),
    with_field_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field+: converted,
      }
    ),
  },
  with_parameter_object(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_object: value,
    }
  ),
  with_parameter_value(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_value: value,
    }
  ),
  with_pipeline_object(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_object: value,
    }
  ),
  with_parameter_object_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_object+: converted,
    }
  ),
  with_parameter_value_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_value+: converted,
    }
  ),
  with_pipeline_object_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_object+: converted,
    }
  ),
}
