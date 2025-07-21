{
  local block = self,
  new(configuration_set_name):: (
    {}
    + block.with_configuration_set_name(configuration_set_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_configuration_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
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
  delivery_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_max_delivery_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_delivery_seconds" expected to be of type "number"';
      {
        max_delivery_seconds: converted,
      }
    ),
    with_sending_pool_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"sending_pool_name" expected to be of type "string"';
      {
        sending_pool_name: converted,
      }
    ),
    with_tls_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_policy" expected to be of type "string"';
      {
        tls_policy: converted,
      }
    ),
  },
  reputation_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_last_fresh_start(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_fresh_start" expected to be of type "string"';
      {
        last_fresh_start: converted,
      }
    ),
    with_reputation_metrics_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"reputation_metrics_enabled" expected to be of type "bool"';
      {
        reputation_metrics_enabled: converted,
      }
    ),
  },
  sending_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_sending_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"sending_enabled" expected to be of type "bool"';
      {
        sending_enabled: converted,
      }
    ),
  },
  suppression_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_suppressed_reasons(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"suppressed_reasons" expected to be of type "list"';
      {
        suppressed_reasons: converted,
      }
    ),
    with_suppressed_reasons_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"suppressed_reasons" expected to be of type "list"';
      {
        suppressed_reasons+: converted,
      }
    ),
  },
  tracking_options:: {
    local block = self,
    new(custom_redirect_domain):: (
      {}
      + block.with_custom_redirect_domain(custom_redirect_domain)
    ),
    with_custom_redirect_domain(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_redirect_domain" expected to be of type "string"';
      {
        custom_redirect_domain: converted,
      }
    ),
    with_https_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"https_policy" expected to be of type "string"';
      {
        https_policy: converted,
      }
    ),
  },
  vdm_options:: {
    local block = self,
    new():: (
      {}
    ),
    dashboard_options:: {
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
    guardian_options:: {
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
    with_dashboard_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dashboard_options: value,
      }
    ),
    with_guardian_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        guardian_options: value,
      }
    ),
    with_dashboard_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dashboard_options+: converted,
      }
    ),
    with_guardian_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        guardian_options+: converted,
      }
    ),
  },
  with_delivery_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_options: value,
    }
  ),
  with_reputation_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reputation_options: value,
    }
  ),
  with_sending_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sending_options: value,
    }
  ),
  with_suppression_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      suppression_options: value,
    }
  ),
  with_tracking_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracking_options: value,
    }
  ),
  with_vdm_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vdm_options: value,
    }
  ),
  with_delivery_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_options+: converted,
    }
  ),
  with_reputation_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reputation_options+: converted,
    }
  ),
  with_sending_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sending_options+: converted,
    }
  ),
  with_suppression_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      suppression_options+: converted,
    }
  ),
  with_tracking_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracking_options+: converted,
    }
  ),
  with_vdm_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vdm_options+: converted,
    }
  ),
}
