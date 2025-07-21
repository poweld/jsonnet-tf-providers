{
  local block = self,
  new(brand_id):: (
    {}
    + block.with_brand_id(brand_id)
  ),
  '#with_brand_id':: 'brand id of the preview signin page',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  '#with_id':: 'placeholder id',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_page_content':: 'page content of the preview signin page',
  with_page_content(value):: (
    local converted = value;
    assert std.isString(converted) : '"page_content" expected to be of type "string"';
    {
      page_content: converted,
    }
  ),
  '#with_widget_version':: 'widget version specified as a Semver',
  with_widget_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"widget_version" expected to be of type "string"';
    {
      widget_version: converted,
    }
  ),
  content_security_policy_setting:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_mode':: 'enforced or report_only',
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    with_report_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"report_uri" expected to be of type "string"';
      {
        report_uri: converted,
      }
    ),
    with_src_list(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"src_list" expected to be of type "list"';
      {
        src_list: converted,
      }
    ),
    with_src_list_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"src_list" expected to be of type "list"';
      {
        src_list+: converted,
      }
    ),
  },
  widget_customizations:: {
    local block = self,
    new():: (
      {}
    ),
    with_authenticator_page_custom_link_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"authenticator_page_custom_link_label" expected to be of type "string"';
      {
        authenticator_page_custom_link_label: converted,
      }
    ),
    with_authenticator_page_custom_link_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"authenticator_page_custom_link_url" expected to be of type "string"';
      {
        authenticator_page_custom_link_url: converted,
      }
    ),
    with_classic_recovery_flow_email_or_username_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"classic_recovery_flow_email_or_username_label" expected to be of type "string"';
      {
        classic_recovery_flow_email_or_username_label: converted,
      }
    ),
    with_custom_link_1_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_1_label" expected to be of type "string"';
      {
        custom_link_1_label: converted,
      }
    ),
    with_custom_link_1_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_1_url" expected to be of type "string"';
      {
        custom_link_1_url: converted,
      }
    ),
    with_custom_link_2_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_2_label" expected to be of type "string"';
      {
        custom_link_2_label: converted,
      }
    ),
    with_custom_link_2_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_2_url" expected to be of type "string"';
      {
        custom_link_2_url: converted,
      }
    ),
    with_forgot_password_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"forgot_password_label" expected to be of type "string"';
      {
        forgot_password_label: converted,
      }
    ),
    with_forgot_password_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"forgot_password_url" expected to be of type "string"';
      {
        forgot_password_url: converted,
      }
    ),
    with_help_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"help_label" expected to be of type "string"';
      {
        help_label: converted,
      }
    ),
    with_help_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"help_url" expected to be of type "string"';
      {
        help_url: converted,
      }
    ),
    with_password_info_tip(value):: (
      local converted = value;
      assert std.isString(converted) : '"password_info_tip" expected to be of type "string"';
      {
        password_info_tip: converted,
      }
    ),
    with_password_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"password_label" expected to be of type "string"';
      {
        password_label: converted,
      }
    ),
    with_show_password_visibility_toggle(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"show_password_visibility_toggle" expected to be of type "bool"';
      {
        show_password_visibility_toggle: converted,
      }
    ),
    with_show_user_identifier(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"show_user_identifier" expected to be of type "bool"';
      {
        show_user_identifier: converted,
      }
    ),
    with_sign_in_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"sign_in_label" expected to be of type "string"';
      {
        sign_in_label: converted,
      }
    ),
    with_unlock_account_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"unlock_account_label" expected to be of type "string"';
      {
        unlock_account_label: converted,
      }
    ),
    with_unlock_account_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"unlock_account_url" expected to be of type "string"';
      {
        unlock_account_url: converted,
      }
    ),
    with_username_info_tip(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_info_tip" expected to be of type "string"';
      {
        username_info_tip: converted,
      }
    ),
    with_username_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_label" expected to be of type "string"';
      {
        username_label: converted,
      }
    ),
    with_widget_generation(value):: (
      local converted = value;
      assert std.isString(converted) : '"widget_generation" expected to be of type "string"';
      {
        widget_generation: converted,
      }
    ),
  },
  with_content_security_policy_setting(value):: (
    local converted = value;
    {
      content_security_policy_setting: value,
    }
  ),
  with_widget_customizations(value):: (
    local converted = value;
    {
      widget_customizations: value,
    }
  ),
}
