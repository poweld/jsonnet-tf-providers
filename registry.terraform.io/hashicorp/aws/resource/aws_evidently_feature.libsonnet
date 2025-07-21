{
  local block = self,
  new(name, project):: (
    {}
    + block.with_name(name)
    + block.with_project(project)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_default_variation(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_variation" expected to be of type "string"';
    {
      default_variation: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_entity_overrides(value):: (
    local converted = value;
    assert std.isObject(converted) : '"entity_overrides" expected to be of type "map"';
    {
      entity_overrides: converted,
    }
  ),
  with_evaluation_rules(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"evaluation_rules" expected to be of type "set"';
    {
      evaluation_rules: converted,
    }
  ),
  with_evaluation_rules_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"evaluation_rules" expected to be of type "set"';
    {
      evaluation_rules+: converted,
    }
  ),
  with_evaluation_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"evaluation_strategy" expected to be of type "string"';
    {
      evaluation_strategy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_project(value):: (
    local converted = value;
    assert std.isString(converted) : '"project" expected to be of type "string"';
    {
      project: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_value_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"value_type" expected to be of type "string"';
    {
      value_type: converted,
    }
  ),
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
  variations:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    value:: {
      local block = self,
      new():: (
        {}
      ),
      with_bool_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"bool_value" expected to be of type "string"';
        {
          bool_value: converted,
        }
      ),
      with_double_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"double_value" expected to be of type "string"';
        {
          double_value: converted,
        }
      ),
      with_long_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"long_value" expected to be of type "string"';
        {
          long_value: converted,
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
    with_value(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value: value,
      }
    ),
    with_value_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value+: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_variations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variations: value,
    }
  ),
  with_variations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variations+: converted,
    }
  ),
}
