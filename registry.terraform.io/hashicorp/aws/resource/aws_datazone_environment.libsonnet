{
  local block = self,
  new(domain_identifier, name, profile_identifier, project_identifier):: (
    {}
    + block.with_domain_identifier(domain_identifier)
    + block.with_name(name)
    + block.with_profile_identifier(profile_identifier)
    + block.with_project_identifier(project_identifier)
  ),
  with_account_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_identifier" expected to be of type "string"';
    {
      account_identifier: converted,
    }
  ),
  with_account_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_region" expected to be of type "string"';
    {
      account_region: converted,
    }
  ),
  with_blueprint_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"blueprint_identifier" expected to be of type "string"';
    {
      blueprint_identifier: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_created_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_by" expected to be of type "string"';
    {
      created_by: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_domain_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_identifier" expected to be of type "string"';
    {
      domain_identifier: converted,
    }
  ),
  with_glossary_terms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"glossary_terms" expected to be of type "list"';
    {
      glossary_terms: converted,
    }
  ),
  with_glossary_terms_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"glossary_terms" expected to be of type "list"';
    {
      glossary_terms+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_deployment(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"last_deployment" expected to be of type "list"';
    {
      last_deployment: converted,
    }
  ),
  with_last_deployment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"last_deployment" expected to be of type "list"';
    {
      last_deployment+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_profile_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_identifier" expected to be of type "string"';
    {
      profile_identifier: converted,
    }
  ),
  with_project_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_identifier" expected to be of type "string"';
    {
      project_identifier: converted,
    }
  ),
  with_provider_environment(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_environment" expected to be of type "string"';
    {
      provider_environment: converted,
    }
  ),
  with_provisioned_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"provisioned_resources" expected to be of type "list"';
    {
      provisioned_resources: converted,
    }
  ),
  with_provisioned_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"provisioned_resources" expected to be of type "list"';
    {
      provisioned_resources+: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  user_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_user_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_parameters: value,
    }
  ),
  with_user_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_parameters+: converted,
    }
  ),
}
