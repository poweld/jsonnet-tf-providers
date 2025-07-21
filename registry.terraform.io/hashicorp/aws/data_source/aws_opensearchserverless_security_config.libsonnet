{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
  ),
  '#with_config_version':: 'The version of the security configuration.',
  with_config_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"config_version" expected to be of type "string"';
    {
      config_version: converted,
    }
  ),
  '#with_created_date':: 'The date the configuration was created.',
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  '#with_description':: 'The description of the security configuration.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_id':: 'The unique identifier of the security configuration.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_last_modified_date':: 'The date the configuration was last modified.',
  with_last_modified_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_date" expected to be of type "string"';
    {
      last_modified_date: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  '#with_type':: 'The type of security configuration.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  saml_options:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_group_attribute':: 'Group attribute for this SAML integration.',
    with_group_attribute(value):: (
      local converted = value;
      assert std.isString(converted) : '"group_attribute" expected to be of type "string"';
      {
        group_attribute: converted,
      }
    ),
    '#with_metadata':: 'The XML IdP metadata file generated from your identity provider.',
    with_metadata(value):: (
      local converted = value;
      assert std.isString(converted) : '"metadata" expected to be of type "string"';
      {
        metadata: converted,
      }
    ),
    '#with_session_timeout':: 'Session timeout, in minutes. Minimum is 5 minutes and maximum is 720 minutes (12 hours). Default is 60 minutes.',
    with_session_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"session_timeout" expected to be of type "number"';
      {
        session_timeout: converted,
      }
    ),
    '#with_user_attribute':: 'User attribute for this SAML integration.',
    with_user_attribute(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_attribute" expected to be of type "string"';
      {
        user_attribute: converted,
      }
    ),
  },
  with_saml_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_options: value,
    }
  ),
  with_saml_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_options+: converted,
    }
  ),
}
