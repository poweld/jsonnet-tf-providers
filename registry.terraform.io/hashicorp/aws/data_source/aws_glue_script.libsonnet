{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"language" expected to be of type "string"';
    {
      language: converted,
    }
  ),
  with_python_script(value):: (
    local converted = value;
    assert std.isString(converted) : '"python_script" expected to be of type "string"';
    {
      python_script: converted,
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
  with_scala_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"scala_code" expected to be of type "string"';
    {
      scala_code: converted,
    }
  ),
  dag_edge:: {
    local block = self,
    new(source, target):: (
      {}
      + block.with_source(source)
      + block.with_target(target)
    ),
    with_source(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
    with_target(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
    with_target_parameter(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_parameter" expected to be of type "string"';
      {
        target_parameter: converted,
      }
    ),
  },
  dag_node:: {
    local block = self,
    new(id, node_type):: (
      {}
      + block.with_id(id)
      + block.with_node_type(node_type)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_line_number(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"line_number" expected to be of type "number"';
      {
        line_number: converted,
      }
    ),
    with_node_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"node_type" expected to be of type "string"';
      {
        node_type: converted,
      }
    ),
    args:: {
      local block = self,
      new(name, value):: (
        {}
        + block.with_name(name)
        + block.with_value(value)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_param(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"param" expected to be of type "bool"';
        {
          param: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_args(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        args: value,
      }
    ),
    with_args_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        args+: converted,
      }
    ),
  },
  with_dag_edge(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dag_edge: value,
    }
  ),
  with_dag_node(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dag_node: value,
    }
  ),
  with_dag_edge_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dag_edge+: converted,
    }
  ),
  with_dag_node_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dag_node+: converted,
    }
  ),
}
