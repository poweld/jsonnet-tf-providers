{
  local block = self,
  new(template, type):: (
    {}
    + block.with_template(template)
    + block.with_type(type)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_template':: 'SMS default template',
  with_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"template" expected to be of type "string"';
    {
      template: converted,
    }
  ),
  '#with_type':: 'SMS template type',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  translations:: {
    local block = self,
    new(language, template):: (
      {}
      + block.with_language(language)
      + block.with_template(template)
    ),
    '#with_language':: 'The language to map the template to.',
    with_language(value):: (
      local converted = value;
      assert std.isString(converted) : '"language" expected to be of type "string"';
      {
        language: converted,
      }
    ),
    '#with_template':: 'The SMS message.',
    with_template(value):: (
      local converted = value;
      assert std.isString(converted) : '"template" expected to be of type "string"';
      {
        template: converted,
      }
    ),
  },
  with_translations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      translations: value,
    }
  ),
  with_translations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      translations+: converted,
    }
  ),
}
