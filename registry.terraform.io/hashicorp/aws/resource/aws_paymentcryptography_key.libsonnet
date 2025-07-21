{
  local block = self,
  new(exportable):: (
    {}
    + block.with_exportable(exportable)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_deletion_window_in_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deletion_window_in_days" expected to be of type "number"';
    {
      deletion_window_in_days: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_exportable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exportable" expected to be of type "bool"';
    {
      exportable: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_check_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_check_value" expected to be of type "string"';
    {
      key_check_value: converted,
    }
  ),
  with_key_check_value_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_check_value_algorithm" expected to be of type "string"';
    {
      key_check_value_algorithm: converted,
    }
  ),
  with_key_origin(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_origin" expected to be of type "string"';
    {
      key_origin: converted,
    }
  ),
  with_key_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_state" expected to be of type "string"';
    {
      key_state: converted,
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
  key_attributes:: {
    local block = self,
    new(key_algorithm, key_class, key_usage):: (
      {}
      + block.with_key_algorithm(key_algorithm)
      + block.with_key_class(key_class)
      + block.with_key_usage(key_usage)
    ),
    with_key_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_algorithm" expected to be of type "string"';
      {
        key_algorithm: converted,
      }
    ),
    with_key_class(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_class" expected to be of type "string"';
      {
        key_class: converted,
      }
    ),
    with_key_usage(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_usage" expected to be of type "string"';
      {
        key_usage: converted,
      }
    ),
    key_modes_of_use:: {
      local block = self,
      new():: (
        {}
      ),
      with_decrypt(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"decrypt" expected to be of type "bool"';
        {
          decrypt: converted,
        }
      ),
      with_derive_key(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"derive_key" expected to be of type "bool"';
        {
          derive_key: converted,
        }
      ),
      with_encrypt(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encrypt" expected to be of type "bool"';
        {
          encrypt: converted,
        }
      ),
      with_generate(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"generate" expected to be of type "bool"';
        {
          generate: converted,
        }
      ),
      with_no_restrictions(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"no_restrictions" expected to be of type "bool"';
        {
          no_restrictions: converted,
        }
      ),
      with_sign(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"sign" expected to be of type "bool"';
        {
          sign: converted,
        }
      ),
      with_unwrap(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"unwrap" expected to be of type "bool"';
        {
          unwrap: converted,
        }
      ),
      with_verify(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"verify" expected to be of type "bool"';
        {
          verify: converted,
        }
      ),
      with_wrap(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"wrap" expected to be of type "bool"';
        {
          wrap: converted,
        }
      ),
    },
    with_key_modes_of_use(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        key_modes_of_use: value,
      }
    ),
    with_key_modes_of_use_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        key_modes_of_use+: converted,
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
  with_key_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      key_attributes: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_key_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      key_attributes+: converted,
    }
  ),
}
