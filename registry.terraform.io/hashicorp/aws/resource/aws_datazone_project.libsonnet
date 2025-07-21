{
  local block = self,
  new(domain_identifier, name):: (
    {}
    + block.with_domain_identifier(domain_identifier)
    + block.with_name(name)
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
  with_failure_reasons(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"failure_reasons" expected to be of type "list"';
    {
      failure_reasons: converted,
    }
  ),
  with_failure_reasons_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"failure_reasons" expected to be of type "list"';
    {
      failure_reasons+: converted,
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
  with_last_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_at" expected to be of type "string"';
    {
      last_updated_at: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_project_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_status" expected to be of type "string"';
    {
      project_status: converted,
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
  with_skip_deletion_check(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_deletion_check" expected to be of type "bool"';
    {
      skip_deletion_check: converted,
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
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
