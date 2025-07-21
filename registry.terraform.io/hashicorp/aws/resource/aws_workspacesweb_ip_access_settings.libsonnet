{
  local block = self,
  new(display_name):: (
    {}
    + block.with_display_name(display_name)
  ),
  with_additional_encryption_context(value):: (
    local converted = value;
    assert std.isObject(converted) : '"additional_encryption_context" expected to be of type "map"';
    {
      additional_encryption_context: converted,
    }
  ),
  with_associated_portal_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"associated_portal_arns" expected to be of type "list"';
    {
      associated_portal_arns: converted,
    }
  ),
  with_associated_portal_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"associated_portal_arns" expected to be of type "list"';
    {
      associated_portal_arns+: converted,
    }
  ),
  with_customer_managed_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_managed_key" expected to be of type "string"';
    {
      customer_managed_key: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_ip_access_settings_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_access_settings_arn" expected to be of type "string"';
    {
      ip_access_settings_arn: converted,
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
  ip_rule:: {
    local block = self,
    new(ip_range):: (
      {}
      + block.with_ip_range(ip_range)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_ip_range(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_range" expected to be of type "string"';
      {
        ip_range: converted,
      }
    ),
  },
  with_ip_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_rule: value,
    }
  ),
  with_ip_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_rule+: converted,
    }
  ),
}
