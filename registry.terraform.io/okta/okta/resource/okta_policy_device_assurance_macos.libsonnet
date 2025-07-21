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
  '#with_disk_encryption_type':: 'List of disk encryption type, can be `ALL_INTERNAL_VOLUMES`',
  with_disk_encryption_type(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type: converted,
    }
  ),
  '#with_disk_encryption_type_mixin':: 'List of disk encryption type, can be `ALL_INTERNAL_VOLUMES`',
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
  '#with_name':: 'Name of the device assurance policy.',
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
  '#with_secure_hardware_present':: 'Is the device secure with hardware in the device assurance policy.',
  with_secure_hardware_present(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"secure_hardware_present" expected to be of type "bool"';
    {
      secure_hardware_present: converted,
    }
  ),
  '#with_third_party_signal_providers':: 'Check to include third party signal provider',
  with_third_party_signal_providers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"third_party_signal_providers" expected to be of type "bool"';
    {
      third_party_signal_providers: converted,
    }
  ),
  '#with_tpsp_browser_version':: 'Third party signal provider minimum browser version',
  with_tpsp_browser_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_browser_version" expected to be of type "string"';
    {
      tpsp_browser_version: converted,
    }
  ),
  '#with_tpsp_builtin_dns_client_enabled':: 'Third party signal provider builtin dns client enable',
  with_tpsp_builtin_dns_client_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_builtin_dns_client_enabled" expected to be of type "bool"';
    {
      tpsp_builtin_dns_client_enabled: converted,
    }
  ),
  '#with_tpsp_chrome_remote_desktop_app_blocked':: 'Third party signal provider chrome remote desktop app blocked',
  with_tpsp_chrome_remote_desktop_app_blocked(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_chrome_remote_desktop_app_blocked" expected to be of type "bool"';
    {
      tpsp_chrome_remote_desktop_app_blocked: converted,
    }
  ),
  '#with_tpsp_device_enrollment_domain':: 'Third party signal provider device enrollment domain',
  with_tpsp_device_enrollment_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_device_enrollment_domain" expected to be of type "string"';
    {
      tpsp_device_enrollment_domain: converted,
    }
  ),
  '#with_tpsp_disk_encrypted':: 'Third party signal provider disk encrypted',
  with_tpsp_disk_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_disk_encrypted" expected to be of type "bool"';
    {
      tpsp_disk_encrypted: converted,
    }
  ),
  '#with_tpsp_key_trust_level':: 'Third party signal provider key trust level',
  with_tpsp_key_trust_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_key_trust_level" expected to be of type "string"';
    {
      tpsp_key_trust_level: converted,
    }
  ),
  '#with_tpsp_os_firewall':: 'Third party signal provider os firewall',
  with_tpsp_os_firewall(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_os_firewall" expected to be of type "bool"';
    {
      tpsp_os_firewall: converted,
    }
  ),
  '#with_tpsp_os_version':: 'Third party signal provider minimum os version',
  with_tpsp_os_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_os_version" expected to be of type "string"';
    {
      tpsp_os_version: converted,
    }
  ),
  '#with_tpsp_password_proctection_warning_trigger':: 'Third party signal provider password protection warning trigger',
  with_tpsp_password_proctection_warning_trigger(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_password_proctection_warning_trigger" expected to be of type "string"';
    {
      tpsp_password_proctection_warning_trigger: converted,
    }
  ),
  '#with_tpsp_realtime_url_check_mode':: 'Third party signal provider realtime url check mode',
  with_tpsp_realtime_url_check_mode(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_realtime_url_check_mode" expected to be of type "bool"';
    {
      tpsp_realtime_url_check_mode: converted,
    }
  ),
  '#with_tpsp_safe_browsing_protection_level':: 'Third party signal provider safe browsing protection level',
  with_tpsp_safe_browsing_protection_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_safe_browsing_protection_level" expected to be of type "string"';
    {
      tpsp_safe_browsing_protection_level: converted,
    }
  ),
  '#with_tpsp_screen_lock_secured':: 'Third party signal provider screen lock secure',
  with_tpsp_screen_lock_secured(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_screen_lock_secured" expected to be of type "bool"';
    {
      tpsp_screen_lock_secured: converted,
    }
  ),
  '#with_tpsp_site_isolation_enabled':: 'Third party signal provider site isolation enabled',
  with_tpsp_site_isolation_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_site_isolation_enabled" expected to be of type "bool"';
    {
      tpsp_site_isolation_enabled: converted,
    }
  ),
}
