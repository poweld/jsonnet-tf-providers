{
  local block = self,
  new():: (
    {}
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_include_additional_language_codes(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_additional_language_codes" expected to be of type "bool"';
    {
      include_additional_language_codes: converted,
    }
  ),
  with_language_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
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
  voices:: {
    local block = self,
    new():: (
      {}
    ),
    with_additional_language_codes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"additional_language_codes" expected to be of type "list"';
      {
        additional_language_codes: converted,
      }
    ),
    with_additional_language_codes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"additional_language_codes" expected to be of type "list"';
      {
        additional_language_codes+: converted,
      }
    ),
    with_gender(value):: (
      local converted = value;
      assert std.isString(converted) : '"gender" expected to be of type "string"';
      {
        gender: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_language_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"language_code" expected to be of type "string"';
      {
        language_code: converted,
      }
    ),
    with_language_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"language_name" expected to be of type "string"';
      {
        language_name: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_supported_engines(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"supported_engines" expected to be of type "list"';
      {
        supported_engines: converted,
      }
    ),
    with_supported_engines_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"supported_engines" expected to be of type "list"';
      {
        supported_engines+: converted,
      }
    ),
  },
  with_voices(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voices: value,
    }
  ),
  with_voices_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voices+: converted,
    }
  ),
}
