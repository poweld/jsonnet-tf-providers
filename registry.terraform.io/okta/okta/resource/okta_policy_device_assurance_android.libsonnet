{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_created_by':: 'Created by',
  with_created_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_by" expected to be of type "string"';
    {
      created_by: converted,
    }
  ),
  '#with_created_date':: 'Created date',
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  '#with_disk_encryption_type':: 'List of disk encryption type, can be `FULL`, `USER`',
  with_disk_encryption_type(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type: converted,
    }
  ),
  '#with_disk_encryption_type_mixin':: 'List of disk encryption type, can be `FULL`, `USER`',
  with_disk_encryption_type_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type+: converted,
    }
  ),
  '#with_id':: 'Policy assurance id',
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
  '#with_last_update':: 'Last update',
  with_last_update(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_update" expected to be of type "string"';
    {
      last_update: converted,
    }
  ),
  '#with_last_updated_by':: 'Last updated by',
  with_last_updated_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_by" expected to be of type "string"';
    {
      last_updated_by: converted,
    }
  ),
  '#with_name':: 'Policy device assurance name',
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
    assert std.isString(converted) : '"os_version" expected to be of type "string"';
    {
      os_version: converted,
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
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"screenlock_type" expected to be of type "set"';
    {
      screenlock_type: converted,
    }
  ),
  '#with_screenlock_type_mixin':: 'List of screenlock type, can be `BIOMETRIC` or `BIOMETRIC, PASSCODE`',
  with_screenlock_type_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"screenlock_type" expected to be of type "set"';
    {
      screenlock_type+: converted,
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
}
