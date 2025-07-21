{
  local block = self,
  new():: (
    {}
  ),
  with_exclude_compliant_resources(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_compliant_resources" expected to be of type "bool"';
    {
      exclude_compliant_resources: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_include_compliance_details(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_compliance_details" expected to be of type "bool"';
    {
      include_compliance_details: converted,
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
  with_resource_arn_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arn_list" expected to be of type "set"';
    {
      resource_arn_list: converted,
    }
  ),
  with_resource_arn_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arn_list" expected to be of type "set"';
    {
      resource_arn_list+: converted,
    }
  ),
  with_resource_tag_mapping_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resource_tag_mapping_list" expected to be of type "list"';
    {
      resource_tag_mapping_list: converted,
    }
  ),
  with_resource_tag_mapping_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resource_tag_mapping_list" expected to be of type "list"';
    {
      resource_tag_mapping_list+: converted,
    }
  ),
  with_resource_type_filters(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_type_filters" expected to be of type "set"';
    {
      resource_type_filters: converted,
    }
  ),
  with_resource_type_filters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_type_filters" expected to be of type "set"';
    {
      resource_type_filters+: converted,
    }
  ),
  tag_filter:: {
    local block = self,
    new(key):: (
      {}
      + block.with_key(key)
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
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  with_tag_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag_filter: value,
    }
  ),
  with_tag_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag_filter+: converted,
    }
  ),
}
