{
  local block = self,
  new(iam_role_arn, name, plan_id):: (
    {}
    + block.with_iam_role_arn(iam_role_arn)
    + block.with_name(name)
    + block.with_plan_id(plan_id)
  ),
  with_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
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
  with_not_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_resources" expected to be of type "set"';
    {
      not_resources: converted,
    }
  ),
  with_not_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_resources" expected to be of type "set"';
    {
      not_resources+: converted,
    }
  ),
  with_plan_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"plan_id" expected to be of type "string"';
    {
      plan_id: converted,
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
  with_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources: converted,
    }
  ),
  with_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources+: converted,
    }
  ),
  condition:: {
    local block = self,
    new():: (
      {}
    ),
    string_equals:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    string_like:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    string_not_equals:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    string_not_like:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    with_string_equals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_equals: value,
      }
    ),
    with_string_like(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_like: value,
      }
    ),
    with_string_not_equals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_equals: value,
      }
    ),
    with_string_not_like(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_like: value,
      }
    ),
    with_string_equals_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_equals+: converted,
      }
    ),
    with_string_like_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_like+: converted,
      }
    ),
    with_string_not_equals_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_equals+: converted,
      }
    ),
    with_string_not_like_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_like+: converted,
      }
    ),
  },
  selection_tag:: {
    local block = self,
    new(key, type, value):: (
      {}
      + block.with_key(key)
      + block.with_type(type)
      + block.with_value(value)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  with_condition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition: value,
    }
  ),
  with_selection_tag(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      selection_tag: value,
    }
  ),
  with_condition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition+: converted,
    }
  ),
  with_selection_tag_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      selection_tag+: converted,
    }
  ),
}
