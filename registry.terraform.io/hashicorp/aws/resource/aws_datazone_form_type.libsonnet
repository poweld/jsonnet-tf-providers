{
  local block = self,
  new(domain_identifier, name, owning_project_identifier):: (
    {}
    + block.with_domain_identifier(domain_identifier)
    + block.with_name(name)
    + block.with_owning_project_identifier(owning_project_identifier)
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
  with_imports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"imports" expected to be of type "list"';
    {
      imports: converted,
    }
  ),
  with_imports_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"imports" expected to be of type "list"';
    {
      imports+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_origin_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_domain_id" expected to be of type "string"';
    {
      origin_domain_id: converted,
    }
  ),
  with_origin_project_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_project_id" expected to be of type "string"';
    {
      origin_project_id: converted,
    }
  ),
  with_owning_project_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"owning_project_identifier" expected to be of type "string"';
    {
      owning_project_identifier: converted,
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
  with_revision(value):: (
    local converted = value;
    assert std.isString(converted) : '"revision" expected to be of type "string"';
    {
      revision: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  model:: {
    local block = self,
    new(smithy):: (
      {}
      + block.with_smithy(smithy)
    ),
    with_smithy(value):: (
      local converted = value;
      assert std.isString(converted) : '"smithy" expected to be of type "string"';
      {
        smithy: converted,
      }
    ),
  },
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
  },
  with_model(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      model: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_model_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      model+: converted,
    }
  ),
}
