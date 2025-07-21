{
  local block = self,
  new(label):: (
    {}
    + block.with_label(label)
  ),
  '#with_accessibility_error_redirect_url':: 'Custom error page URL',
  with_accessibility_error_redirect_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"accessibility_error_redirect_url" expected to be of type "string"';
    {
      accessibility_error_redirect_url: converted,
    }
  ),
  '#with_accessibility_login_redirect_url':: 'Custom login page URL',
  with_accessibility_login_redirect_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"accessibility_login_redirect_url" expected to be of type "string"';
    {
      accessibility_login_redirect_url: converted,
    }
  ),
  '#with_accessibility_self_service':: 'Enable self service. Default is `false`',
  with_accessibility_self_service(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"accessibility_self_service" expected to be of type "bool"';
    {
      accessibility_self_service: converted,
    }
  ),
  '#with_admin_note':: 'Application notes for admins.',
  with_admin_note(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_note" expected to be of type "string"';
    {
      admin_note: converted,
    }
  ),
  '#with_app_links_json':: 'Displays specific appLinks for the app. The value for each application link should be boolean.',
  with_app_links_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_links_json" expected to be of type "string"';
    {
      app_links_json: converted,
    }
  ),
  '#with_auto_submit_toolbar':: 'Display auto submit toolbar',
  with_auto_submit_toolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  '#with_button_field':: 'Login button field',
  with_button_field(value):: (
    local converted = value;
    assert std.isString(converted) : '"button_field" expected to be of type "string"';
    {
      button_field: converted,
    }
  ),
  '#with_checkbox':: 'CSS selector for the checkbox',
  with_checkbox(value):: (
    local converted = value;
    assert std.isString(converted) : '"checkbox" expected to be of type "string"';
    {
      checkbox: converted,
    }
  ),
  '#with_enduser_note':: 'Application notes for end users.',
  with_enduser_note(value):: (
    local converted = value;
    assert std.isString(converted) : '"enduser_note" expected to be of type "string"';
    {
      enduser_note: converted,
    }
  ),
  '#with_hide_ios':: 'Do not display application icon on mobile app',
  with_hide_ios(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_ios" expected to be of type "bool"';
    {
      hide_ios: converted,
    }
  ),
  '#with_hide_web':: 'Do not display application icon to users',
  with_hide_web(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_web" expected to be of type "bool"';
    {
      hide_web: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_label':: "The Application's display name.",
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  '#with_logo':: 'Local file path to the logo. The file must be in PNG, JPG, or GIF format, and less than 1 MB in size.',
  with_logo(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo" expected to be of type "string"';
    {
      logo: converted,
    }
  ),
  '#with_logo_url':: "URL of the application's logo",
  with_logo_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo_url" expected to be of type "string"';
    {
      logo_url: converted,
    }
  ),
  '#with_name':: 'Name of the app.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_password_field':: 'Login password field',
  with_password_field(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_field" expected to be of type "string"';
    {
      password_field: converted,
    }
  ),
  '#with_preconfigured_app':: 'Preconfigured app name',
  with_preconfigured_app(value):: (
    local converted = value;
    assert std.isString(converted) : '"preconfigured_app" expected to be of type "string"';
    {
      preconfigured_app: converted,
    }
  ),
  '#with_redirect_url':: 'If going to the login page URL redirects to another page, then enter that URL here',
  with_redirect_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"redirect_url" expected to be of type "string"';
    {
      redirect_url: converted,
    }
  ),
  '#with_sign_on_mode':: 'Sign on mode of application.',
  with_sign_on_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"sign_on_mode" expected to be of type "string"';
    {
      sign_on_mode: converted,
    }
  ),
  '#with_status':: 'Status of application. By default, it is `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_url':: 'Login URL',
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  '#with_url_regex':: 'A regex that further restricts URL to the specified regex',
  with_url_regex(value):: (
    local converted = value;
    assert std.isString(converted) : '"url_regex" expected to be of type "string"';
    {
      url_regex: converted,
    }
  ),
  '#with_user_name_template':: 'Username template. Default: `${source.login}`',
  with_user_name_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template" expected to be of type "string"';
    {
      user_name_template: converted,
    }
  ),
  '#with_user_name_template_push_status':: 'Push username on update. Valid values: `PUSH` and `DONT_PUSH`',
  with_user_name_template_push_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_push_status" expected to be of type "string"';
    {
      user_name_template_push_status: converted,
    }
  ),
  '#with_user_name_template_suffix':: 'Username template suffix',
  with_user_name_template_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_suffix" expected to be of type "string"';
    {
      user_name_template_suffix: converted,
    }
  ),
  '#with_user_name_template_type':: 'Username template type. Default: `BUILT_IN`',
  with_user_name_template_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_type" expected to be of type "string"';
    {
      user_name_template_type: converted,
    }
  ),
  '#with_username_field':: 'Login username field',
  with_username_field(value):: (
    local converted = value;
    assert std.isString(converted) : '"username_field" expected to be of type "string"';
    {
      username_field: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
