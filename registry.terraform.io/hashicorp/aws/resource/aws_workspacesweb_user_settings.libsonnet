{
  local block = self,
  new(copy_allowed, download_allowed, paste_allowed, print_allowed, upload_allowed):: (
    {}
    + block.with_copy_allowed(copy_allowed)
    + block.with_download_allowed(download_allowed)
    + block.with_paste_allowed(paste_allowed)
    + block.with_print_allowed(print_allowed)
    + block.with_upload_allowed(upload_allowed)
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
  with_copy_allowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_allowed" expected to be of type "string"';
    {
      copy_allowed: converted,
    }
  ),
  with_customer_managed_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_managed_key" expected to be of type "string"';
    {
      customer_managed_key: converted,
    }
  ),
  with_deep_link_allowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"deep_link_allowed" expected to be of type "string"';
    {
      deep_link_allowed: converted,
    }
  ),
  with_disconnect_timeout_in_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"disconnect_timeout_in_minutes" expected to be of type "number"';
    {
      disconnect_timeout_in_minutes: converted,
    }
  ),
  with_download_allowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"download_allowed" expected to be of type "string"';
    {
      download_allowed: converted,
    }
  ),
  with_idle_disconnect_timeout_in_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_disconnect_timeout_in_minutes" expected to be of type "number"';
    {
      idle_disconnect_timeout_in_minutes: converted,
    }
  ),
  with_paste_allowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"paste_allowed" expected to be of type "string"';
    {
      paste_allowed: converted,
    }
  ),
  with_print_allowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"print_allowed" expected to be of type "string"';
    {
      print_allowed: converted,
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
  with_upload_allowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"upload_allowed" expected to be of type "string"';
    {
      upload_allowed: converted,
    }
  ),
  with_user_settings_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_settings_arn" expected to be of type "string"';
    {
      user_settings_arn: converted,
    }
  ),
  cookie_synchronization_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    allowlist:: {
      local block = self,
      new(domain):: (
        {}
        + block.with_domain(domain)
      ),
      with_domain(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain" expected to be of type "string"';
        {
          domain: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
    },
    blocklist:: {
      local block = self,
      new(domain):: (
        {}
        + block.with_domain(domain)
      ),
      with_domain(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain" expected to be of type "string"';
        {
          domain: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
    },
    with_allowlist(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        allowlist: value,
      }
    ),
    with_blocklist(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        blocklist: value,
      }
    ),
    with_allowlist_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        allowlist+: converted,
      }
    ),
    with_blocklist_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        blocklist+: converted,
      }
    ),
  },
  toolbar_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_hidden_toolbar_items(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"hidden_toolbar_items" expected to be of type "list"';
      {
        hidden_toolbar_items: converted,
      }
    ),
    with_hidden_toolbar_items_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"hidden_toolbar_items" expected to be of type "list"';
      {
        hidden_toolbar_items+: converted,
      }
    ),
    with_max_display_resolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_display_resolution" expected to be of type "string"';
      {
        max_display_resolution: converted,
      }
    ),
    with_toolbar_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"toolbar_type" expected to be of type "string"';
      {
        toolbar_type: converted,
      }
    ),
    with_visual_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"visual_mode" expected to be of type "string"';
      {
        visual_mode: converted,
      }
    ),
  },
  with_cookie_synchronization_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cookie_synchronization_configuration: value,
    }
  ),
  with_toolbar_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      toolbar_configuration: value,
    }
  ),
  with_cookie_synchronization_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cookie_synchronization_configuration+: converted,
    }
  ),
  with_toolbar_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      toolbar_configuration+: converted,
    }
  ),
}
