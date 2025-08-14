{
  local block = self,
  new(name):: (
    {
      terraformObject:: "okta_policy_device_assurance_android",
    }
    + block.withName(name)
  ),
  "#withCreatedBy":: "Created by",
  withCreatedBy(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_by" expected to be of type "string"';
    {
      created_by: converted,
    }
  ),
  "#withCreatedDate":: "Created date",
  withCreatedDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  "#withDiskEncryptionType":: "List of disk encryption type, can be `FULL`, `USER`",
  withDiskEncryptionType(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type: converted,
    }
  ),
  "#withDiskEncryptionTypeMixin":: "List of disk encryption type, can be `FULL`, `USER`",
  withDiskEncryptionTypeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type+: converted,
    }
  ),
  "#withId":: "Policy assurance id",
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
  "#withLastUpdate":: "Last update",
  withLastUpdate(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_update" expected to be of type "string"';
    {
      last_update: converted,
    }
  ),
  "#withLastUpdatedBy":: "Last updated by",
  withLastUpdatedBy(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_by" expected to be of type "string"';
    {
      last_updated_by: converted,
    }
  ),
  "#withName":: "Policy device assurance name",
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
    assert std.isString(converted) : '"os_version" expected to be of type "string"';
    {
      os_version: converted,
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
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"screenlock_type" expected to be of type "set"';
    {
      screenlock_type: converted,
    }
  ),
  "#withScreenlockTypeMixin":: "List of screenlock type, can be `BIOMETRIC` or `BIOMETRIC, PASSCODE`",
  withScreenlockTypeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"screenlock_type" expected to be of type "set"';
    {
      screenlock_type+: converted,
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
}
