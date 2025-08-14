{
  local block = self,
  new():: (
    {}
  ),
  "#withCaptchaId":: "Array of pages that have CAPTCHA enabled. Valid values: `SSR`, `SSPR` and `SIGN_IN`.",
  withCaptchaId(value):: (
    local converted = value;
    assert std.isString(converted) : '"captcha_id" expected to be of type "string"';
    {
      captcha_id: converted,
    }
  ),
  "#withEnabledFor":: "Set of pages that have CAPTCHA enabled",
  withEnabledFor(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_for" expected to be of type "set"';
    {
      enabled_for: converted,
    }
  ),
  "#withEnabledForMixin":: "Set of pages that have CAPTCHA enabled",
  withEnabledForMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_for" expected to be of type "set"';
    {
      enabled_for+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
