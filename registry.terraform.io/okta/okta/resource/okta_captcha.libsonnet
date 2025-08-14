{
  local block = self,
  new(name, secret_key, site_key, type):: (
    {
      terraformObject:: "okta_captcha",
      terraformType:: "resource",
    }
    + block.withName(name)
    + block.withSecretKey(secret_key)
    + block.withSiteKey(site_key)
    + block.withType(type)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of the CAPTCHA",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withSecretKey":: "Secret key issued from the CAPTCHA vendor to perform server-side validation for a CAPTCHA token",
  withSecretKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_key" expected to be of type "string"';
    {
      secret_key: converted,
    }
  ),
  "#withSiteKey":: "Site key issued from the CAPTCHA vendor to render a CAPTCHA on a page",
  withSiteKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"site_key" expected to be of type "string"';
    {
      site_key: converted,
    }
  ),
  "#withType":: "Type of the captcha. Valid values: `HCAPTCHA`, `RECAPTCHA_V2`",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
