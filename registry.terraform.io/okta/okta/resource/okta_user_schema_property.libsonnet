{
  local block = self,
  new(index, title, type):: (
    {}
    + block.with_index(index)
    + block.with_title(title)
    + block.with_type(type)
  ),
  '#with_array_enum':: "Array of values that an array property's items can be set to.",
  with_array_enum(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"array_enum" expected to be of type "list"';
    {
      array_enum: converted,
    }
  ),
  '#with_array_enum_mixin':: "Array of values that an array property's items can be set to.",
  with_array_enum_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"array_enum" expected to be of type "list"';
    {
      array_enum+: converted,
    }
  ),
  '#with_array_type':: 'The type of the array elements if `type` is set to `array`',
  with_array_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"array_type" expected to be of type "string"';
    {
      array_type: converted,
    }
  ),
  '#with_description':: 'The description of the user schema property.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_enum':: 'Array of values a primitive property can be set to. See `array_enum` for arrays.',
  with_enum(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enum" expected to be of type "list"';
    {
      enum: converted,
    }
  ),
  '#with_enum_mixin':: 'Array of values a primitive property can be set to. See `array_enum` for arrays.',
  with_enum_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enum" expected to be of type "list"';
    {
      enum+: converted,
    }
  ),
  '#with_external_name':: 'External name of the user schema property.',
  with_external_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_name" expected to be of type "string"';
    {
      external_name: converted,
    }
  ),
  '#with_external_namespace':: 'External namespace of the user schema property.',
  with_external_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_namespace" expected to be of type "string"';
    {
      external_namespace: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_index':: 'Subschema unique string identifier',
  with_index(value):: (
    local converted = value;
    assert std.isString(converted) : '"index" expected to be of type "string"';
    {
      index: converted,
    }
  ),
  '#with_master':: ' Master priority for the user schema property. It can be set to `PROFILE_MASTER`, `OVERRIDE` or `OKTA`.',
  with_master(value):: (
    local converted = value;
    assert std.isString(converted) : '"master" expected to be of type "string"';
    {
      master: converted,
    }
  ),
  '#with_max_length':: 'The maximum length of the user property value. Only applies to type `string`',
  with_max_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_length" expected to be of type "number"';
    {
      max_length: converted,
    }
  ),
  '#with_min_length':: 'The minimum length of the user property value. Only applies to type `string`',
  with_min_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_length" expected to be of type "number"';
    {
      min_length: converted,
    }
  ),
  '#with_pattern':: "The validation pattern to use for the subschema. Must be in form of '.+', or '[<pattern>]+' if present.'",
  with_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"pattern" expected to be of type "string"';
    {
      pattern: converted,
    }
  ),
  '#with_permissions':: 'Access control permissions for the property. It can be set to `READ_WRITE`, `READ_ONLY`, `HIDE`. Default: `READ_ONLY`',
  with_permissions(value):: (
    local converted = value;
    assert std.isString(converted) : '"permissions" expected to be of type "string"';
    {
      permissions: converted,
    }
  ),
  '#with_required':: 'Whether the subschema is required',
  with_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
    {
      required: converted,
    }
  ),
  '#with_scope':: 'determines whether an app user attribute can be set at the Individual or Group Level. Default: `NONE`',
  with_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
    }
  ),
  '#with_title':: 'Subschema title (display name)',
  with_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  '#with_type':: 'The type of the schema property. It can be `string`, `boolean`, `number`, `integer`, `array`, or `object`',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_unique':: 'Whether the property should be unique. It can be set to `UNIQUE_VALIDATED` or `NOT_UNIQUE`.',
  with_unique(value):: (
    local converted = value;
    assert std.isString(converted) : '"unique" expected to be of type "string"';
    {
      unique: converted,
    }
  ),
  '#with_user_type':: 'User type ID. By default, it is `default`',
  with_user_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
  array_one_of:: {
    local block = self,
    new(const, title):: (
      {}
      + block.with_const(const)
      + block.with_title(title)
    ),
    '#with_const':: 'Value mapping to member of `array_enum`',
    with_const(value):: (
      local converted = value;
      assert std.isString(converted) : '"const" expected to be of type "string"';
      {
        const: converted,
      }
    ),
    '#with_title':: 'Display name for the enum value.',
    with_title(value):: (
      local converted = value;
      assert std.isString(converted) : '"title" expected to be of type "string"';
      {
        title: converted,
      }
    ),
  },
  master_override_priority:: {
    local block = self,
    new(value):: (
      {}
      + block.with_value(value)
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
  one_of:: {
    local block = self,
    new(const, title):: (
      {}
      + block.with_const(const)
      + block.with_title(title)
    ),
    '#with_const':: 'Enum value',
    with_const(value):: (
      local converted = value;
      assert std.isString(converted) : '"const" expected to be of type "string"';
      {
        const: converted,
      }
    ),
    '#with_title':: 'Enum title',
    with_title(value):: (
      local converted = value;
      assert std.isString(converted) : '"title" expected to be of type "string"';
      {
        title: converted,
      }
    ),
  },
  with_array_one_of(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      array_one_of: value,
    }
  ),
  with_master_override_priority(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_override_priority: value,
    }
  ),
  with_one_of(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      one_of: value,
    }
  ),
  with_array_one_of_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      array_one_of+: converted,
    }
  ),
  with_master_override_priority_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_override_priority+: converted,
    }
  ),
  with_one_of_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      one_of+: converted,
    }
  ),
}
