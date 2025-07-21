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
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
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
  cors_config:: {
    local block = self,
    new(access_control_allow_credentials, origin_override):: (
      {}
      + block.with_access_control_allow_credentials(access_control_allow_credentials)
      + block.with_origin_override(origin_override)
    ),
    with_access_control_allow_credentials(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"access_control_allow_credentials" expected to be of type "bool"';
      {
        access_control_allow_credentials: converted,
      }
    ),
    with_access_control_max_age_sec(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"access_control_max_age_sec" expected to be of type "number"';
      {
        access_control_max_age_sec: converted,
      }
    ),
    with_origin_override(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"origin_override" expected to be of type "bool"';
      {
        origin_override: converted,
      }
    ),
    access_control_allow_headers:: {
      local block = self,
      new():: (
        {}
      ),
      with_items(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items: converted,
        }
      ),
      with_items_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items+: converted,
        }
      ),
    },
    access_control_allow_methods:: {
      local block = self,
      new():: (
        {}
      ),
      with_items(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items: converted,
        }
      ),
      with_items_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items+: converted,
        }
      ),
    },
    access_control_allow_origins:: {
      local block = self,
      new():: (
        {}
      ),
      with_items(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items: converted,
        }
      ),
      with_items_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items+: converted,
        }
      ),
    },
    access_control_expose_headers:: {
      local block = self,
      new():: (
        {}
      ),
      with_items(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items: converted,
        }
      ),
      with_items_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items+: converted,
        }
      ),
    },
    with_access_control_allow_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_headers: value,
      }
    ),
    with_access_control_allow_methods(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_methods: value,
      }
    ),
    with_access_control_allow_origins(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_origins: value,
      }
    ),
    with_access_control_expose_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_expose_headers: value,
      }
    ),
    with_access_control_allow_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_headers+: converted,
      }
    ),
    with_access_control_allow_methods_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_methods+: converted,
      }
    ),
    with_access_control_allow_origins_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_origins+: converted,
      }
    ),
    with_access_control_expose_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_expose_headers+: converted,
      }
    ),
  },
  custom_headers_config:: {
    local block = self,
    new():: (
      {}
    ),
    items:: {
      local block = self,
      new(header, override, value):: (
        {}
        + block.with_header(header)
        + block.with_override(override)
        + block.with_value(value)
      ),
      with_header(value):: (
        local converted = value;
        assert std.isString(converted) : '"header" expected to be of type "string"';
        {
          header: converted,
        }
      ),
      with_override(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_items(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items: value,
      }
    ),
    with_items_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items+: converted,
      }
    ),
  },
  remove_headers_config:: {
    local block = self,
    new():: (
      {}
    ),
    items:: {
      local block = self,
      new(header):: (
        {}
        + block.with_header(header)
      ),
      with_header(value):: (
        local converted = value;
        assert std.isString(converted) : '"header" expected to be of type "string"';
        {
          header: converted,
        }
      ),
    },
    with_items(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items: value,
      }
    ),
    with_items_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items+: converted,
      }
    ),
  },
  security_headers_config:: {
    local block = self,
    new():: (
      {}
    ),
    content_security_policy:: {
      local block = self,
      new(content_security_policy, override):: (
        {}
        + block.with_content_security_policy(content_security_policy)
        + block.with_override(override)
      ),
      with_content_security_policy(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_security_policy" expected to be of type "string"';
        {
          content_security_policy: converted,
        }
      ),
      with_override(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
    },
    content_type_options:: {
      local block = self,
      new(override):: (
        {}
        + block.with_override(override)
      ),
      with_override(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
    },
    frame_options:: {
      local block = self,
      new(frame_option, override):: (
        {}
        + block.with_frame_option(frame_option)
        + block.with_override(override)
      ),
      with_frame_option(value):: (
        local converted = value;
        assert std.isString(converted) : '"frame_option" expected to be of type "string"';
        {
          frame_option: converted,
        }
      ),
      with_override(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
    },
    referrer_policy:: {
      local block = self,
      new(override, referrer_policy):: (
        {}
        + block.with_override(override)
        + block.with_referrer_policy(referrer_policy)
      ),
      with_override(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
      with_referrer_policy(value):: (
        local converted = value;
        assert std.isString(converted) : '"referrer_policy" expected to be of type "string"';
        {
          referrer_policy: converted,
        }
      ),
    },
    strict_transport_security:: {
      local block = self,
      new(access_control_max_age_sec, override):: (
        {}
        + block.with_access_control_max_age_sec(access_control_max_age_sec)
        + block.with_override(override)
      ),
      with_access_control_max_age_sec(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"access_control_max_age_sec" expected to be of type "number"';
        {
          access_control_max_age_sec: converted,
        }
      ),
      with_include_subdomains(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"include_subdomains" expected to be of type "bool"';
        {
          include_subdomains: converted,
        }
      ),
      with_override(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
      with_preload(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"preload" expected to be of type "bool"';
        {
          preload: converted,
        }
      ),
    },
    xss_protection:: {
      local block = self,
      new(override, protection):: (
        {}
        + block.with_override(override)
        + block.with_protection(protection)
      ),
      with_mode_block(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"mode_block" expected to be of type "bool"';
        {
          mode_block: converted,
        }
      ),
      with_override(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
      with_protection(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"protection" expected to be of type "bool"';
        {
          protection: converted,
        }
      ),
      with_report_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"report_uri" expected to be of type "string"';
        {
          report_uri: converted,
        }
      ),
    },
    with_content_security_policy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_security_policy: value,
      }
    ),
    with_content_type_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_type_options: value,
      }
    ),
    with_frame_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        frame_options: value,
      }
    ),
    with_referrer_policy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        referrer_policy: value,
      }
    ),
    with_strict_transport_security(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        strict_transport_security: value,
      }
    ),
    with_xss_protection(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        xss_protection: value,
      }
    ),
    with_content_security_policy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_security_policy+: converted,
      }
    ),
    with_content_type_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_type_options+: converted,
      }
    ),
    with_frame_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        frame_options+: converted,
      }
    ),
    with_referrer_policy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        referrer_policy+: converted,
      }
    ),
    with_strict_transport_security_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        strict_transport_security+: converted,
      }
    ),
    with_xss_protection_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        xss_protection+: converted,
      }
    ),
  },
  server_timing_headers_config:: {
    local block = self,
    new(enabled, sampling_rate):: (
      {}
      + block.with_enabled(enabled)
      + block.with_sampling_rate(sampling_rate)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_sampling_rate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"sampling_rate" expected to be of type "number"';
      {
        sampling_rate: converted,
      }
    ),
  },
  with_cors_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_config: value,
    }
  ),
  with_custom_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_headers_config: value,
    }
  ),
  with_remove_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remove_headers_config: value,
    }
  ),
  with_security_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      security_headers_config: value,
    }
  ),
  with_server_timing_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_timing_headers_config: value,
    }
  ),
  with_cors_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_config+: converted,
    }
  ),
  with_custom_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_headers_config+: converted,
    }
  ),
  with_remove_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remove_headers_config+: converted,
    }
  ),
  with_security_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      security_headers_config+: converted,
    }
  ),
  with_server_timing_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_timing_headers_config+: converted,
    }
  ),
}
