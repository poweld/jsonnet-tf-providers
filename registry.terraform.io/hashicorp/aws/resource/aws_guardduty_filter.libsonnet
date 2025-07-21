{
  local block = self,
  new(action, detector_id, name, rank):: (
    {}
    + block.with_action(action)
    + block.with_detector_id(detector_id)
    + block.with_name(name)
    + block.with_rank(rank)
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
  with_detector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
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
  with_rank(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rank" expected to be of type "number"';
    {
      rank: converted,
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
      with_equals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals: converted,
        }
      ),
      with_equals_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals+: converted,
        }
      ),
      with_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"field" expected to be of type "string"';
        {
          field: converted,
        }
      ),
      with_greater_than(value):: (
        local converted = value;
        assert std.isString(converted) : '"greater_than" expected to be of type "string"';
        {
          greater_than: converted,
        }
      ),
      with_greater_than_or_equal(value):: (
        local converted = value;
        assert std.isString(converted) : '"greater_than_or_equal" expected to be of type "string"';
        {
          greater_than_or_equal: converted,
        }
      ),
      with_less_than(value):: (
        local converted = value;
        assert std.isString(converted) : '"less_than" expected to be of type "string"';
        {
          less_than: converted,
        }
      ),
      with_less_than_or_equal(value):: (
        local converted = value;
        assert std.isString(converted) : '"less_than_or_equal" expected to be of type "string"';
        {
          less_than_or_equal: converted,
        }
      ),
      with_not_equals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals: converted,
        }
      ),
      with_not_equals_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals+: converted,
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
  with_finding_criteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      finding_criteria: value,
    }
  ),
  with_finding_criteria_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      finding_criteria+: converted,
    }
  ),
}
