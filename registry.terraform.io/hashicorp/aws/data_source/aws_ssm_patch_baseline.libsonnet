{
  local block = self,
  new(owner):: (
    {}
    + block.with_owner(owner)
  ),
  with_approval_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"approval_rule" expected to be of type "list"';
    {
      approval_rule: converted,
    }
  ),
  with_approval_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"approval_rule" expected to be of type "list"';
    {
      approval_rule+: converted,
    }
  ),
  with_approved_patches(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"approved_patches" expected to be of type "list"';
    {
      approved_patches: converted,
    }
  ),
  with_approved_patches_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"approved_patches" expected to be of type "list"';
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
  with_default_baseline(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_baseline" expected to be of type "bool"';
    {
      default_baseline: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_global_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"global_filter" expected to be of type "list"';
    {
      global_filter: converted,
    }
  ),
  with_global_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"global_filter" expected to be of type "list"';
    {
      global_filter+: converted,
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
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_operating_system(value):: (
    local converted = value;
    assert std.isString(converted) : '"operating_system" expected to be of type "string"';
    {
      operating_system: converted,
    }
  ),
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
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
    assert std.isArray(converted) : '"rejected_patches" expected to be of type "list"';
    {
      rejected_patches: converted,
    }
  ),
  with_rejected_patches_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"rejected_patches" expected to be of type "list"';
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
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source" expected to be of type "list"';
    {
      source: converted,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source" expected to be of type "list"';
    {
      source+: converted,
    }
  ),
}
