{
  local block = self,
  new():: (
    {}
  ),
  '#with_disk_encryption_type':: 'List of disk encryption type, can be `FULL`, `USER`',
  with_disk_encryption_type(value):: (
    local converted = value;
    assert std.isObject(converted) : '"disk_encryption_type" expected to be of type "object"';
    {
      disk_encryption_type: converted,
    }
  ),
  '#with_id':: 'ID of the user type to retrieve, conflicts with `name`.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_jailbreak':: 'Is the device jailbroken in the device assurance policy.',
  with_jailbreak(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"jailbreak" expected to be of type "bool"';
    {
      jailbreak: converted,
    }
  ),
  '#with_name':: 'Name of user type to retrieve, conflicts with `id`.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_os_version':: 'Minimum os version of the device in the device assurance policy.',
  with_os_version(value):: (
    local converted = value;
    assert std.isObject(converted) : '"os_version" expected to be of type "object"';
    {
      os_version: converted,
    }
  ),
  '#with_os_version_constraint':: 'The list of os version constraints.',
  with_os_version_constraint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"os_version_constraint" expected to be of type "list"';
    {
      os_version_constraint: converted,
    }
  ),
  '#with_os_version_constraint_mixin':: 'The list of os version constraints.',
  with_os_version_constraint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"os_version_constraint" expected to be of type "list"';
    {
      os_version_constraint+: converted,
    }
  ),
  '#with_platform':: 'Policy device assurance platform',
  with_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
    }
  ),
  '#with_screenlock_type':: 'List of screenlock type, can be `BIOMETRIC` or `BIOMETRIC, PASSCODE`',
  with_screenlock_type(value):: (
    local converted = value;
    assert std.isObject(converted) : '"screenlock_type" expected to be of type "object"';
    {
      screenlock_type: converted,
    }
  ),
  '#with_secure_hardware_present':: 'Indicates if the device contains a secure hardware functionality',
  with_secure_hardware_present(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"secure_hardware_present" expected to be of type "bool"';
    {
      secure_hardware_present: converted,
    }
  ),
  '#with_third_party_signal_provider':: 'Indicates if the device contains a secure hardware functionality',
  with_third_party_signal_provider(value):: (
    local converted = value;
    assert std.isObject(converted) : '"third_party_signal_provider" expected to be of type "object"';
    {
      third_party_signal_provider: converted,
    }
  ),
}
