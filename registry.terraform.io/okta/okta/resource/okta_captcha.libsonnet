{
  local block = self,
  new(name, secret_key, site_key, type):: (
    {}
    + block.with_name(name)
    + block.with_secret_key(secret_key)
    + block.with_site_key(site_key)
    + block.with_type(type)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Name of the CAPTCHA',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_secret_key':: 'Secret key issued from the CAPTCHA vendor to perform server-side validation for a CAPTCHA token',
  with_secret_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_key" expected to be of type "string"';
    {
      secret_key: converted,
    }
  ),
  '#with_site_key':: 'Site key issued from the CAPTCHA vendor to render a CAPTCHA on a page',
  with_site_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"site_key" expected to be of type "string"';
    {
      site_key: converted,
    }
  ),
  '#with_type':: 'Type of the captcha. Valid values: `HCAPTCHA`, `RECAPTCHA_V2`',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
