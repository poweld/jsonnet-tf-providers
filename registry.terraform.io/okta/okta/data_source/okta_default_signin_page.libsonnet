{
  local block = self,
  new(brand_id):: (
    {
      terraformObject:: "okta_default_signin_page",
      terraformType:: "data",
    }
    + block.withBrandId(brand_id)
  ),
  "#withBrandId":: "brand id of the preview signin page",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withId":: "placeholder id",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPageContent":: "page content of the preview signin page",
  withPageContent(value):: (
    local converted = value;
    assert std.isString(converted) : '"page_content" expected to be of type "string"';
    {
      page_content: converted,
    }
  ),
  "#withWidgetVersion":: "widget version specified as a Semver",
  withWidgetVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"widget_version" expected to be of type "string"';
    {
      widget_version: converted,
    }
  ),
  content_security_policy_setting:: {
    local block = self,
    new():: (
      {
        terraformObject:: "okta_default_signin_page",
        terraformType:: "data",
      }
    ),
    "#withMode":: "enforced or report_only",
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    withReportUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"report_uri" expected to be of type "string"';
      {
        report_uri: converted,
      }
    ),
    withSrcList(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"src_list" expected to be of type "list"';
      {
        src_list: converted,
      }
    ),
    withSrcListMixin(value):: (
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
      {
        terraformObject:: "okta_default_signin_page",
        terraformType:: "data",
      }
    ),
    withAuthenticatorPageCustomLinkLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"authenticator_page_custom_link_label" expected to be of type "string"';
      {
        authenticator_page_custom_link_label: converted,
      }
    ),
    withAuthenticatorPageCustomLinkUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"authenticator_page_custom_link_url" expected to be of type "string"';
      {
        authenticator_page_custom_link_url: converted,
      }
    ),
    withClassicRecoveryFlowEmailOrUsernameLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"classic_recovery_flow_email_or_username_label" expected to be of type "string"';
      {
        classic_recovery_flow_email_or_username_label: converted,
      }
    ),
    withCustomLink_1Label(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_1_label" expected to be of type "string"';
      {
        custom_link_1_label: converted,
      }
    ),
    withCustomLink_1Url(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_1_url" expected to be of type "string"';
      {
        custom_link_1_url: converted,
      }
    ),
    withCustomLink_2Label(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_2_label" expected to be of type "string"';
      {
        custom_link_2_label: converted,
      }
    ),
    withCustomLink_2Url(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_2_url" expected to be of type "string"';
      {
        custom_link_2_url: converted,
      }
    ),
    withForgotPasswordLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"forgot_password_label" expected to be of type "string"';
      {
        forgot_password_label: converted,
      }
    ),
    withForgotPasswordUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"forgot_password_url" expected to be of type "string"';
      {
        forgot_password_url: converted,
      }
    ),
    withHelpLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"help_label" expected to be of type "string"';
      {
        help_label: converted,
      }
    ),
    withHelpUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"help_url" expected to be of type "string"';
      {
        help_url: converted,
      }
    ),
    withPasswordInfoTip(value):: (
      local converted = value;
      assert std.isString(converted) : '"password_info_tip" expected to be of type "string"';
      {
        password_info_tip: converted,
      }
    ),
    withPasswordLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"password_label" expected to be of type "string"';
      {
        password_label: converted,
      }
    ),
    withShowPasswordVisibilityToggle(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"show_password_visibility_toggle" expected to be of type "bool"';
      {
        show_password_visibility_toggle: converted,
      }
    ),
    withShowUserIdentifier(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"show_user_identifier" expected to be of type "bool"';
      {
        show_user_identifier: converted,
      }
    ),
    withSignInLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"sign_in_label" expected to be of type "string"';
      {
        sign_in_label: converted,
      }
    ),
    withUnlockAccountLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"unlock_account_label" expected to be of type "string"';
      {
        unlock_account_label: converted,
      }
    ),
    withUnlockAccountUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"unlock_account_url" expected to be of type "string"';
      {
        unlock_account_url: converted,
      }
    ),
    withUsernameInfoTip(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_info_tip" expected to be of type "string"';
      {
        username_info_tip: converted,
      }
    ),
    withUsernameLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_label" expected to be of type "string"';
      {
        username_label: converted,
      }
    ),
    withWidgetGeneration(value):: (
      local converted = value;
      assert std.isString(converted) : '"widget_generation" expected to be of type "string"';
      {
        widget_generation: converted,
      }
    ),
  },
  withContentSecurityPolicySetting(value):: (
    local converted = value;
    {
      content_security_policy_setting: value,
    }
  ),
  withWidgetCustomizations(value):: (
    local converted = value;
    {
      widget_customizations: value,
    }
  ),
}
