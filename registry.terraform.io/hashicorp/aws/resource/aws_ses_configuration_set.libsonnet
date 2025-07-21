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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_fresh_start(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_fresh_start" expected to be of type "string"';
    {
      last_fresh_start: converted,
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
  with_reputation_metrics_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"reputation_metrics_enabled" expected to be of type "bool"';
    {
      reputation_metrics_enabled: converted,
    }
  ),
  with_sending_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"sending_enabled" expected to be of type "bool"';
    {
      sending_enabled: converted,
    }
  ),
  delivery_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_tls_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_policy" expected to be of type "string"';
      {
        tls_policy: converted,
      }
    ),
  },
  tracking_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_custom_redirect_domain(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_redirect_domain" expected to be of type "string"';
      {
        custom_redirect_domain: converted,
      }
    ),
  },
  with_delivery_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_options: value,
    }
  ),
  with_tracking_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracking_options: value,
    }
  ),
  with_delivery_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_options+: converted,
    }
  ),
  with_tracking_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracking_options+: converted,
    }
  ),
}
