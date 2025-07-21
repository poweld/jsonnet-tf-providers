{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_billing_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"billing_mode" expected to be of type "string"';
    {
      billing_mode: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_multi_region_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_region_enabled" expected to be of type "bool"';
    {
      multi_region_enabled: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_organization_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"organization_enabled" expected to be of type "bool"';
    {
      organization_enabled: converted,
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
  with_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period" expected to be of type "number"';
    {
      retention_period: converted,
    }
  ),
  with_suspend(value):: (
    local converted = value;
    assert std.isString(converted) : '"suspend" expected to be of type "string"';
    {
      suspend: converted,
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
  with_termination_protection_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"termination_protection_enabled" expected to be of type "bool"';
    {
      termination_protection_enabled: converted,
    }
  ),
  advanced_event_selector:: {
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
    field_selector:: {
      local block = self,
      new():: (
        {}
      ),
      with_ends_with(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"ends_with" expected to be of type "list"';
        {
          ends_with: converted,
        }
      ),
      with_ends_with_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"ends_with" expected to be of type "list"';
        {
          ends_with+: converted,
        }
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
      with_not_ends_with(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_ends_with" expected to be of type "list"';
        {
          not_ends_with: converted,
        }
      ),
      with_not_ends_with_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_ends_with" expected to be of type "list"';
        {
          not_ends_with+: converted,
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
      with_not_starts_with(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_starts_with" expected to be of type "list"';
        {
          not_starts_with: converted,
        }
      ),
      with_not_starts_with_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_starts_with" expected to be of type "list"';
        {
          not_starts_with+: converted,
        }
      ),
      with_starts_with(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"starts_with" expected to be of type "list"';
        {
          starts_with: converted,
        }
      ),
      with_starts_with_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"starts_with" expected to be of type "list"';
        {
          starts_with+: converted,
        }
      ),
    },
    with_field_selector(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_selector: value,
      }
    ),
    with_field_selector_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_selector+: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_advanced_event_selector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_event_selector: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_advanced_event_selector_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_event_selector+: converted,
    }
  ),
}
