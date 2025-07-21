{
  local block = self,
  new(editor_role_values, workspace_id):: (
    {}
    + block.with_editor_role_values(editor_role_values)
    + block.with_workspace_id(workspace_id)
  ),
  with_admin_role_values(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_role_values" expected to be of type "list"';
    {
      admin_role_values: converted,
    }
  ),
  with_admin_role_values_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_role_values" expected to be of type "list"';
    {
      admin_role_values+: converted,
    }
  ),
  with_allowed_organizations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"allowed_organizations" expected to be of type "list"';
    {
      allowed_organizations: converted,
    }
  ),
  with_allowed_organizations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"allowed_organizations" expected to be of type "list"';
    {
      allowed_organizations+: converted,
    }
  ),
  with_editor_role_values(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"editor_role_values" expected to be of type "list"';
    {
      editor_role_values: converted,
    }
  ),
  with_editor_role_values_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"editor_role_values" expected to be of type "list"';
    {
      editor_role_values+: converted,
    }
  ),
  with_email_assertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_assertion" expected to be of type "string"';
    {
      email_assertion: converted,
    }
  ),
  with_groups_assertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_assertion" expected to be of type "string"';
    {
      groups_assertion: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idp_metadata_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_metadata_url" expected to be of type "string"';
    {
      idp_metadata_url: converted,
    }
  ),
  with_idp_metadata_xml(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_metadata_xml" expected to be of type "string"';
    {
      idp_metadata_xml: converted,
    }
  ),
  with_login_assertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_assertion" expected to be of type "string"';
    {
      login_assertion: converted,
    }
  ),
  with_login_validity_duration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"login_validity_duration" expected to be of type "number"';
    {
      login_validity_duration: converted,
    }
  ),
  with_name_assertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_assertion" expected to be of type "string"';
    {
      name_assertion: converted,
    }
  ),
  with_org_assertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"org_assertion" expected to be of type "string"';
    {
      org_assertion: converted,
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
  with_role_assertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_assertion" expected to be of type "string"';
    {
      role_assertion: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_workspace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
