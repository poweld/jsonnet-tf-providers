{
  local block = self,
  new(app_authorization_arn, app_bundle_arn):: (
    {}
    + block.with_app_authorization_arn(app_authorization_arn)
    + block.with_app_bundle_arn(app_bundle_arn)
  ),
  with_app(value):: (
    local converted = value;
    assert std.isString(converted) : '"app" expected to be of type "string"';
    {
      app: converted,
    }
  ),
  with_app_authorization_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_authorization_arn" expected to be of type "string"';
    {
      app_authorization_arn: converted,
    }
  ),
  with_app_bundle_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_bundle_arn" expected to be of type "string"';
    {
      app_bundle_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_tenant(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tenant" expected to be of type "list"';
    {
      tenant: converted,
    }
  ),
  with_tenant_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tenant" expected to be of type "list"';
    {
      tenant+: converted,
    }
  ),
  auth_request:: {
    local block = self,
    new(code, redirect_uri):: (
      {}
      + block.with_code(code)
      + block.with_redirect_uri(redirect_uri)
    ),
    with_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"code" expected to be of type "string"';
      {
        code: converted,
      }
    ),
    with_redirect_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
      {
        redirect_uri: converted,
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
  },
  with_auth_request(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth_request: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_auth_request_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth_request+: converted,
    }
  ),
}
