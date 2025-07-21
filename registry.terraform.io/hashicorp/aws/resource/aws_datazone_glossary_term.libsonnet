{
  local block = self,
  new(glossary_identifier, name):: (
    {}
    + block.with_glossary_identifier(glossary_identifier)
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
  with_domain_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_identifier" expected to be of type "string"';
    {
      domain_identifier: converted,
    }
  ),
  with_glossary_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"glossary_identifier" expected to be of type "string"';
    {
      glossary_identifier: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_long_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"long_description" expected to be of type "string"';
    {
      long_description: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_short_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"short_description" expected to be of type "string"';
    {
      short_description: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  term_relations:: {
    local block = self,
    new():: (
      {}
    ),
    with_classifies(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"classifies" expected to be of type "set"';
      {
        classifies: converted,
      }
    ),
    with_classifies_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"classifies" expected to be of type "set"';
      {
        classifies+: converted,
      }
    ),
    with_is_a(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"is_a" expected to be of type "set"';
      {
        is_a: converted,
      }
    ),
    with_is_a_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"is_a" expected to be of type "set"';
      {
        is_a+: converted,
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
  with_term_relations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      term_relations: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_term_relations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      term_relations+: converted,
    }
  ),
}
