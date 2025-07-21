{
  local block = self,
  new(action):: (
    {}
    + block.with_action(action)
  ),
  with_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_position(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"position" expected to be of type "number"';
    {
      position: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  finding_criteria:: {
    local block = self,
    new():: (
      {}
    ),
    criterion:: {
      local block = self,
      new(field):: (
        {}
        + block.with_field(field)
      ),
      with_eq(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"eq" expected to be of type "set"';
        {
          eq: converted,
        }
      ),
      with_eq_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"eq" expected to be of type "set"';
        {
          eq+: converted,
        }
      ),
      with_eq_exact_match(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"eq_exact_match" expected to be of type "set"';
        {
          eq_exact_match: converted,
        }
      ),
      with_eq_exact_match_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"eq_exact_match" expected to be of type "set"';
        {
          eq_exact_match+: converted,
        }
      ),
      with_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"field" expected to be of type "string"';
        {
          field: converted,
        }
      ),
      with_gt(value):: (
        local converted = value;
        assert std.isString(converted) : '"gt" expected to be of type "string"';
        {
          gt: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lt(value):: (
        local converted = value;
        assert std.isString(converted) : '"lt" expected to be of type "string"';
        {
          lt: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
      with_neq(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"neq" expected to be of type "set"';
        {
          neq: converted,
        }
      ),
      with_neq_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"neq" expected to be of type "set"';
        {
          neq+: converted,
        }
      ),
    },
    with_criterion(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        criterion: value,
      }
    ),
    with_criterion_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        criterion+: converted,
      }
    ),
  },
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
  },
  with_finding_criteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      finding_criteria: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_finding_criteria_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      finding_criteria+: converted,
    }
  ),
}
