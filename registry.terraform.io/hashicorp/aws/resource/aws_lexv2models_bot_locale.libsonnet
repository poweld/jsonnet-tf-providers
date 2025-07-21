{
  local block = self,
  new(bot_id, bot_version, locale_id, n_lu_intent_confidence_threshold):: (
    {}
    + block.with_bot_id(bot_id)
    + block.with_bot_version(bot_version)
    + block.with_locale_id(locale_id)
    + block.with_n_lu_intent_confidence_threshold(n_lu_intent_confidence_threshold)
  ),
  with_bot_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_id" expected to be of type "string"';
    {
      bot_id: converted,
    }
  ),
  with_bot_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_version" expected to be of type "string"';
    {
      bot_version: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_locale_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale_id" expected to be of type "string"';
    {
      locale_id: converted,
    }
  ),
  with_n_lu_intent_confidence_threshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"n_lu_intent_confidence_threshold" expected to be of type "number"';
    {
      n_lu_intent_confidence_threshold: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  voice_settings:: {
    local block = self,
    new(voice_id):: (
      {}
      + block.with_voice_id(voice_id)
    ),
    with_engine(value):: (
      local converted = value;
      assert std.isString(converted) : '"engine" expected to be of type "string"';
      {
        engine: converted,
      }
    ),
    with_voice_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"voice_id" expected to be of type "string"';
      {
        voice_id: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_voice_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voice_settings: value,
    }
  ),
  with_voice_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voice_settings+: converted,
    }
  ),
}
