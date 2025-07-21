{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_report_suspicious_activity_enabled':: 'Notifies end users about suspicious or unrecognized activity from their account. Default is `true`.',
  with_report_suspicious_activity_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"report_suspicious_activity_enabled" expected to be of type "bool"';
    {
      report_suspicious_activity_enabled: converted,
    }
  ),
  '#with_send_email_for_factor_enrollment_enabled':: 'Notifies end users of any activity on their account related to MFA factor enrollment. Default is `true`.',
  with_send_email_for_factor_enrollment_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_for_factor_enrollment_enabled" expected to be of type "bool"';
    {
      send_email_for_factor_enrollment_enabled: converted,
    }
  ),
  '#with_send_email_for_factor_reset_enabled':: 'Notifies end users that one or more factors have been reset for their account. Default is `true`.',
  with_send_email_for_factor_reset_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_for_factor_reset_enabled" expected to be of type "bool"';
    {
      send_email_for_factor_reset_enabled: converted,
    }
  ),
  '#with_send_email_for_new_device_enabled':: 'Notifies end users about new sign-on activity. Default is `true`.',
  with_send_email_for_new_device_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_for_new_device_enabled" expected to be of type "bool"';
    {
      send_email_for_new_device_enabled: converted,
    }
  ),
  '#with_send_email_for_password_changed_enabled':: 'Notifies end users that the password for their account has changed. Default is `true`.',
  with_send_email_for_password_changed_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_for_password_changed_enabled" expected to be of type "bool"';
    {
      send_email_for_password_changed_enabled: converted,
    }
  ),
}
