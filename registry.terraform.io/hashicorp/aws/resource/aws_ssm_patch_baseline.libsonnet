{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_approved_patches(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"approved_patches" expected to be of type "set"';
    {
      approved_patches: converted,
    }
  ),
  with_approved_patches_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"approved_patches" expected to be of type "set"';
    {
      approved_patches+: converted,
    }
  ),
  with_approved_patches_compliance_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"approved_patches_compliance_level" expected to be of type "string"';
    {
      approved_patches_compliance_level: converted,
    }
  ),
  with_approved_patches_enable_non_security(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"approved_patches_enable_non_security" expected to be of type "bool"';
    {
      approved_patches_enable_non_security: converted,
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
  with_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"json" expected to be of type "string"';
    {
      json: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_operating_system(value):: (
    local converted = value;
    assert std.isString(converted) : '"operating_system" expected to be of type "string"';
    {
      operating_system: converted,
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
  with_rejected_patches(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rejected_patches" expected to be of type "set"';
    {
      rejected_patches: converted,
    }
  ),
  with_rejected_patches_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rejected_patches" expected to be of type "set"';
    {
      rejected_patches+: converted,
    }
  ),
  with_rejected_patches_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"rejected_patches_action" expected to be of type "string"';
    {
      rejected_patches_action: converted,
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
  approval_rule:: {
    local block = self,
    new():: (
      {}
    ),
    with_approve_after_days(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"approve_after_days" expected to be of type "number"';
      {
        approve_after_days: converted,
      }
    ),
    with_approve_until_date(value):: (
      local converted = value;
      assert std.isString(converted) : '"approve_until_date" expected to be of type "string"';
      {
        approve_until_date: converted,
      }
    ),
    with_compliance_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"compliance_level" expected to be of type "string"';
      {
        compliance_level: converted,
      }
    ),
    with_enable_non_security(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_non_security" expected to be of type "bool"';
      {
        enable_non_security: converted,
      }
    ),
    patch_filter:: {
      local block = self,
      new(key, values):: (
        {}
        + block.with_key(key)
        + block.with_values(values)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values+: converted,
        }
      ),
    },
    with_patch_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        patch_filter: value,
      }
    ),
    with_patch_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        patch_filter+: converted,
      }
    ),
  },
  global_filter:: {
    local block = self,
    new(key, values):: (
      {}
      + block.with_key(key)
      + block.with_values(values)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new(configuration, name, products):: (
      {}
      + block.with_configuration(configuration)
      + block.with_name(name)
      + block.with_products(products)
    ),
    with_configuration(value):: (
      local converted = value;
      assert std.isString(converted) : '"configuration" expected to be of type "string"';
      {
        configuration: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_products(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"products" expected to be of type "list"';
      {
        products: converted,
      }
    ),
    with_products_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"products" expected to be of type "list"';
      {
        products+: converted,
      }
    ),
  },
  with_approval_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      approval_rule: value,
    }
  ),
  with_global_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      global_filter: value,
    }
  ),
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  with_approval_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      approval_rule+: converted,
    }
  ),
  with_global_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      global_filter+: converted,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}
