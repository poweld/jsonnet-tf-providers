{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_clock_drift_interval':: "Clock drift interval. This setting allows you to build in tolerance for any drift between the token's current time and the server's current time. Valid values: `3`, `5`, `10`. Default is `3`.",
  with_clock_drift_interval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"clock_drift_interval" expected to be of type "number"';
    {
      clock_drift_interval: converted,
    }
  ),
  '#with_hmac_algorithm':: 'HMAC Algorithm. Valid values: `HMacSHA1`, `HMacSHA256`, `HMacSHA512`. Default is `HMacSHA512`.',
  with_hmac_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"hmac_algorithm" expected to be of type "string"';
    {
      hmac_algorithm: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'The TOTP name.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_otp_length':: 'Length of the password. Default is `6`.',
  with_otp_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"otp_length" expected to be of type "number"';
    {
      otp_length: converted,
    }
  ),
  '#with_shared_secret_encoding':: 'Shared secret encoding. Valid values: `base32`, `base64`, `hexadecimal`. Default is `base32`.',
  with_shared_secret_encoding(value):: (
    local converted = value;
    assert std.isString(converted) : '"shared_secret_encoding" expected to be of type "string"';
    {
      shared_secret_encoding: converted,
    }
  ),
  '#with_time_step':: 'Time step in seconds. Valid values: `15`, `30`, `60`. Default is `15`.',
  with_time_step(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"time_step" expected to be of type "number"';
    {
      time_step: converted,
    }
  ),
}
