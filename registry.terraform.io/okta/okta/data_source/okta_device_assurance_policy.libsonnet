{
  local block = self,
  new():: (
    {}
  ),
  "#withDiskEncryptionType":: "List of disk encryption type, can be `FULL`, `USER`",
  withDiskEncryptionType(value):: (
    local converted = value;
    assert std.isObject(converted) : '"disk_encryption_type" expected to be of type "object"';
    {
      disk_encryption_type: converted,
    }
  ),
  "#withId":: "ID of the user type to retrieve, conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withJailbreak":: "Is the device jailbroken in the device assurance policy.",
  withJailbreak(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"jailbreak" expected to be of type "bool"';
    {
      jailbreak: converted,
    }
  ),
  "#withName":: "Name of user type to retrieve, conflicts with `id`.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withOsVersion":: "Minimum os version of the device in the device assurance policy.",
  withOsVersion(value):: (
    local converted = value;
    assert std.isObject(converted) : '"os_version" expected to be of type "object"';
    {
      os_version: converted,
    }
  ),
  "#withOsVersionConstraint":: "The list of os version constraints.",
  withOsVersionConstraint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"os_version_constraint" expected to be of type "list"';
    {
      os_version_constraint: converted,
    }
  ),
  "#withOsVersionConstraintMixin":: "The list of os version constraints.",
  withOsVersionConstraintMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"os_version_constraint" expected to be of type "list"';
    {
      os_version_constraint+: converted,
    }
  ),
  "#withPlatform":: "Policy device assurance platform",
  withPlatform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
    }
  ),
  "#withScreenlockType":: "List of screenlock type, can be `BIOMETRIC` or `BIOMETRIC, PASSCODE`",
  withScreenlockType(value):: (
    local converted = value;
    assert std.isObject(converted) : '"screenlock_type" expected to be of type "object"';
    {
      screenlock_type: converted,
    }
  ),
  "#withSecureHardwarePresent":: "Indicates if the device contains a secure hardware functionality",
  withSecureHardwarePresent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"secure_hardware_present" expected to be of type "bool"';
    {
      secure_hardware_present: converted,
    }
  ),
  "#withThirdPartySignalProvider":: "Indicates if the device contains a secure hardware functionality",
  withThirdPartySignalProvider(value):: (
    local converted = value;
    assert std.isObject(converted) : '"third_party_signal_provider" expected to be of type "object"';
    {
      third_party_signal_provider: converted,
    }
  ),
}
