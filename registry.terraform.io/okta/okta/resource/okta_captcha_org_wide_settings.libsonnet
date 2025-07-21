{
  local block = self,
  new():: (
    {}
  ),
  '#with_captcha_id':: 'Array of pages that have CAPTCHA enabled. Valid values: `SSR`, `SSPR` and `SIGN_IN`.',
  with_captcha_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"captcha_id" expected to be of type "string"';
    {
      captcha_id: converted,
    }
  ),
  '#with_enabled_for':: 'Set of pages that have CAPTCHA enabled',
  with_enabled_for(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_for" expected to be of type "set"';
    {
      enabled_for: converted,
    }
  ),
  '#with_enabled_for_mixin':: 'Set of pages that have CAPTCHA enabled',
  with_enabled_for_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_for" expected to be of type "set"';
    {
      enabled_for+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
