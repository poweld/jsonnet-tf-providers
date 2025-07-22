{
  version:: '~> 5.2.0',
  local block = self,
  new():: (
    {}
  ),
  '#with_access_token':: 'Bearer token granting privileges to Okta API.',
  with_access_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_token" expected to be of type "string"';
    {
      access_token: converted,
    }
  ),
  '#with_api_token':: 'API Token granting privileges to Okta API.',
  with_api_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_token" expected to be of type "string"';
    {
      api_token: converted,
    }
  ),
  '#with_backoff':: 'Use exponential back off strategy for rate limits.',
  with_backoff(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"backoff" expected to be of type "bool"';
    {
      backoff: converted,
    }
  ),
  '#with_base_url':: "The Okta url. (Use 'oktapreview.com' for Okta testing)",
  with_base_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_url" expected to be of type "string"';
    {
      base_url: converted,
    }
  ),
  '#with_client_id':: 'API Token granting privileges to Okta API.',
  with_client_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  '#with_http_proxy':: 'Alternate HTTP proxy of scheme://hostname or scheme://hostname:port format',
  with_http_proxy(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_proxy" expected to be of type "string"';
    {
      http_proxy: converted,
    }
  ),
  '#with_log_level':: 'providers log level. Minimum is 1 (TRACE), and maximum is 5 (ERROR)',
  with_log_level(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"log_level" expected to be of type "number"';
    {
      log_level: converted,
    }
  ),
  '#with_max_api_capacity':: 'Sets what percentage of capacity the provider can use of the total rate limit capacity while making calls to the Okta management API endpoints. Okta API operates in one minute buckets. See Okta Management API Rate Limits: https://developer.okta.com/docs/reference/rl-global-mgmt/',
  with_max_api_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_api_capacity" expected to be of type "number"';
    {
      max_api_capacity: converted,
    }
  ),
  '#with_max_retries':: 'maximum number of retries to attempt before erroring out.',
  with_max_retries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
    {
      max_retries: converted,
    }
  ),
  '#with_max_wait_seconds':: 'maximum seconds to wait when rate limit is hit. We use exponential backoffs when backoff is enabled.',
  with_max_wait_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_wait_seconds" expected to be of type "number"';
    {
      max_wait_seconds: converted,
    }
  ),
  '#with_min_wait_seconds':: 'minimum seconds to wait when rate limit is hit. We use exponential backoffs when backoff is enabled.',
  with_min_wait_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_wait_seconds" expected to be of type "number"';
    {
      min_wait_seconds: converted,
    }
  ),
  '#with_org_name':: 'The organization to manage in Okta.',
  with_org_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"org_name" expected to be of type "string"';
    {
      org_name: converted,
    }
  ),
  '#with_parallelism':: 'Number of concurrent requests to make within a resource where bulk operations are not possible. Take note of https://developer.okta.com/docs/api/getting_started/rate-limits.',
  with_parallelism(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"parallelism" expected to be of type "number"';
    {
      parallelism: converted,
    }
  ),
  '#with_private_key':: 'API Token granting privileges to Okta API.',
  with_private_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
    }
  ),
  '#with_private_key_id':: 'API Token Id granting privileges to Okta API.',
  with_private_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key_id" expected to be of type "string"';
    {
      private_key_id: converted,
    }
  ),
  '#with_request_timeout':: 'Timeout for single request (in seconds) which is made to Okta, the default is `0` (means no limit is set). The maximum value can be `300`.',
  with_request_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"request_timeout" expected to be of type "number"';
    {
      request_timeout: converted,
    }
  ),
  '#with_scopes':: 'API Token granting privileges to Okta API.',
  with_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes: converted,
    }
  ),
  '#with_scopes_mixin':: 'API Token granting privileges to Okta API.',
  with_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes+: converted,
    }
  ),
}
