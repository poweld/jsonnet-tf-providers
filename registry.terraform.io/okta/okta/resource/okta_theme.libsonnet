{
  local block = self,
  new(brand_id):: (
    {}
    + block.with_brand_id(brand_id)
  ),
  '#with_background_image':: 'Path to local file',
  with_background_image(value):: (
    local converted = value;
    assert std.isString(converted) : '"background_image" expected to be of type "string"';
    {
      background_image: converted,
    }
  ),
  '#with_background_image_url':: 'Background image URL',
  with_background_image_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"background_image_url" expected to be of type "string"';
    {
      background_image_url: converted,
    }
  ),
  '#with_brand_id':: 'Brand ID',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  '#with_email_template_touch_point_variant':: 'Variant for email templates (`OKTA_DEFAULT`, `FULL_THEME`)',
  with_email_template_touch_point_variant(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_template_touch_point_variant" expected to be of type "string"';
    {
      email_template_touch_point_variant: converted,
    }
  ),
  '#with_end_user_dashboard_touch_point_variant':: 'Variant for the Okta End-User Dashboard (`OKTA_DEFAULT`, `WHITE_LOGO_BACKGROUND`, `FULL_THEME`, `LOGO_ON_FULL_WHITE_BACKGROUND`)',
  with_end_user_dashboard_touch_point_variant(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_user_dashboard_touch_point_variant" expected to be of type "string"';
    {
      end_user_dashboard_touch_point_variant: converted,
    }
  ),
  '#with_error_page_touch_point_variant':: 'Variant for the error page (`OKTA_DEFAULT`, `BACKGROUND_SECONDARY_COLOR`, `BACKGROUND_IMAGE`)',
  with_error_page_touch_point_variant(value):: (
    local converted = value;
    assert std.isString(converted) : '"error_page_touch_point_variant" expected to be of type "string"';
    {
      error_page_touch_point_variant: converted,
    }
  ),
  '#with_favicon':: 'Path to local file',
  with_favicon(value):: (
    local converted = value;
    assert std.isString(converted) : '"favicon" expected to be of type "string"';
    {
      favicon: converted,
    }
  ),
  '#with_favicon_url':: 'Favicon URL',
  with_favicon_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"favicon_url" expected to be of type "string"';
    {
      favicon_url: converted,
    }
  ),
  '#with_id':: 'Brand ID',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_links':: 'Link relations for this object - JSON HAL - Discoverable resources related to the email template',
  with_links(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  '#with_logo':: 'Path to local file',
  with_logo(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo" expected to be of type "string"';
    {
      logo: converted,
    }
  ),
  '#with_logo_url':: 'Logo URL',
  with_logo_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo_url" expected to be of type "string"';
    {
      logo_url: converted,
    }
  ),
  '#with_primary_color_contrast_hex':: 'Primary color contrast hex code',
  with_primary_color_contrast_hex(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_color_contrast_hex" expected to be of type "string"';
    {
      primary_color_contrast_hex: converted,
    }
  ),
  '#with_primary_color_hex':: 'Primary color hex code',
  with_primary_color_hex(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_color_hex" expected to be of type "string"';
    {
      primary_color_hex: converted,
    }
  ),
  '#with_secondary_color_contrast_hex':: 'Secondary color contrast hex code',
  with_secondary_color_contrast_hex(value):: (
    local converted = value;
    assert std.isString(converted) : '"secondary_color_contrast_hex" expected to be of type "string"';
    {
      secondary_color_contrast_hex: converted,
    }
  ),
  '#with_secondary_color_hex':: 'Secondary color hex code',
  with_secondary_color_hex(value):: (
    local converted = value;
    assert std.isString(converted) : '"secondary_color_hex" expected to be of type "string"';
    {
      secondary_color_hex: converted,
    }
  ),
  '#with_sign_in_page_touch_point_variant':: 'Variant for the Okta Sign-In Page (`OKTA_DEFAULT`, `BACKGROUND_SECONDARY_COLOR`, `BACKGROUND_IMAGE`)',
  with_sign_in_page_touch_point_variant(value):: (
    local converted = value;
    assert std.isString(converted) : '"sign_in_page_touch_point_variant" expected to be of type "string"';
    {
      sign_in_page_touch_point_variant: converted,
    }
  ),
  '#with_theme_id':: 'Theme ID - Note: Okta API for theme only reads and updates therefore the okta_theme resource needs to act as a quasi data source. Do this by setting theme_id.',
  with_theme_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"theme_id" expected to be of type "string"';
    {
      theme_id: converted,
    }
  ),
}
