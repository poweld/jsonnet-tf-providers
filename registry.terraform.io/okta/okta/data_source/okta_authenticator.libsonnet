{
  local block = self,
  new():: (
    {}
  ),
  '#with_id':: 'ID of the authenticator.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_key':: 'A human-readable string that identifies the authenticator.',
  with_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  '#with_name':: 'Name of the authenticator.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_provider_auth_port':: 'The RADIUS server port (for example 1812). This is defined when the On-Prem RADIUS server is configured',
  with_provider_auth_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provider_auth_port" expected to be of type "number"';
    {
      provider_auth_port: converted,
    }
  ),
  '#with_provider_hostname':: 'Server host name or IP address',
  with_provider_hostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_hostname" expected to be of type "string"';
    {
      provider_hostname: converted,
    }
  ),
  '#with_provider_instance_id':: '(Specific to `security_key`) App Instance ID.',
  with_provider_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_instance_id" expected to be of type "string"';
    {
      provider_instance_id: converted,
    }
  ),
  '#with_provider_json':: 'Authenticator Provider in JSON format',
  with_provider_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_json" expected to be of type "string"';
    {
      provider_json: converted,
    }
  ),
  '#with_provider_type':: 'Provider type.',
  with_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
    }
  ),
  '#with_provider_user_name_template':: 'Username template expected by the provider.',
  with_provider_user_name_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_user_name_template" expected to be of type "string"';
    {
      provider_user_name_template: converted,
    }
  ),
  '#with_settings':: 'Authenticator settings in JSON format',
  with_settings(value):: (
    local converted = value;
    assert std.isString(converted) : '"settings" expected to be of type "string"';
    {
      settings: converted,
    }
  ),
  '#with_status':: 'Status of the Authenticator.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: 'Type of the authenticator',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
