{
  local block = self,
  new():: (
    {}
  ),
  "#withId":: "ID of the authenticator.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKey":: "A human-readable string that identifies the authenticator.",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withName":: "Name of the authenticator.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withProviderAuthPort":: "The RADIUS server port (for example 1812). This is defined when the On-Prem RADIUS server is configured",
  withProviderAuthPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provider_auth_port" expected to be of type "number"';
    {
      provider_auth_port: converted,
    }
  ),
  "#withProviderHostname":: "Server host name or IP address",
  withProviderHostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_hostname" expected to be of type "string"';
    {
      provider_hostname: converted,
    }
  ),
  "#withProviderInstanceId":: "(Specific to `security_key`) App Instance ID.",
  withProviderInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_instance_id" expected to be of type "string"';
    {
      provider_instance_id: converted,
    }
  ),
  "#withProviderJson":: "Authenticator Provider in JSON format",
  withProviderJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_json" expected to be of type "string"';
    {
      provider_json: converted,
    }
  ),
  "#withProviderType":: "Provider type.",
  withProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
    }
  ),
  "#withProviderUserNameTemplate":: "Username template expected by the provider.",
  withProviderUserNameTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_user_name_template" expected to be of type "string"';
    {
      provider_user_name_template: converted,
    }
  ),
  "#withSettings":: "Authenticator settings in JSON format",
  withSettings(value):: (
    local converted = value;
    assert std.isString(converted) : '"settings" expected to be of type "string"';
    {
      settings: converted,
    }
  ),
  "#withStatus":: "Status of the Authenticator.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "Type of the authenticator",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
