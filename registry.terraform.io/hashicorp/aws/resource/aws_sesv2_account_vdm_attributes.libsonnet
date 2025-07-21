{
  local block = self,
  new(vdm_enabled):: (
    {}
    + block.with_vdm_enabled(vdm_enabled)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_vdm_enabled(value):: (
    local converted = value;
    assert std.isString(converted) : '"vdm_enabled" expected to be of type "string"';
    {
      vdm_enabled: converted,
    }
  ),
  dashboard_attributes:: {
    local block = self,
    new():: (
      {}
    ),
    with_engagement_metrics(value):: (
      local converted = value;
      assert std.isString(converted) : '"engagement_metrics" expected to be of type "string"';
      {
        engagement_metrics: converted,
      }
    ),
  },
  guardian_attributes:: {
    local block = self,
    new():: (
      {}
    ),
    with_optimized_shared_delivery(value):: (
      local converted = value;
      assert std.isString(converted) : '"optimized_shared_delivery" expected to be of type "string"';
      {
        optimized_shared_delivery: converted,
      }
    ),
  },
  with_dashboard_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dashboard_attributes: value,
    }
  ),
  with_guardian_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      guardian_attributes: value,
    }
  ),
  with_dashboard_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dashboard_attributes+: converted,
    }
  ),
  with_guardian_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      guardian_attributes+: converted,
    }
  ),
}
