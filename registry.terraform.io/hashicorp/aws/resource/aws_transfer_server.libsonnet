{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  with_force_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  with_function(value):: (
    local converted = value;
    assert std.isString(converted) : '"function" expected to be of type "string"';
    {
      'function': converted,
    }
  ),
  with_host_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_key" expected to be of type "string"';
    {
      host_key: converted,
    }
  ),
  with_host_key_fingerprint(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_key_fingerprint" expected to be of type "string"';
    {
      host_key_fingerprint: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider_type" expected to be of type "string"';
    {
      identity_provider_type: converted,
    }
  ),
  with_invocation_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"invocation_role" expected to be of type "string"';
    {
      invocation_role: converted,
    }
  ),
  with_logging_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"logging_role" expected to be of type "string"';
    {
      logging_role: converted,
    }
  ),
  with_post_authentication_login_banner(value):: (
    local converted = value;
    assert std.isString(converted) : '"post_authentication_login_banner" expected to be of type "string"';
    {
      post_authentication_login_banner: converted,
    }
  ),
  with_pre_authentication_login_banner(value):: (
    local converted = value;
    assert std.isString(converted) : '"pre_authentication_login_banner" expected to be of type "string"';
    {
      pre_authentication_login_banner: converted,
    }
  ),
  with_protocols(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
    {
      protocols: converted,
    }
  ),
  with_protocols_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
    {
      protocols+: converted,
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
  with_security_policy_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_policy_name" expected to be of type "string"';
    {
      security_policy_name: converted,
    }
  ),
  with_sftp_authentication_methods(value):: (
    local converted = value;
    assert std.isString(converted) : '"sftp_authentication_methods" expected to be of type "string"';
    {
      sftp_authentication_methods: converted,
    }
  ),
  '#with_structured_log_destinations':: 'This is a set of arns of destinations that will receive structured logs from the transfer server',
  with_structured_log_destinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"structured_log_destinations" expected to be of type "set"';
    {
      structured_log_destinations: converted,
    }
  ),
  '#with_structured_log_destinations_mixin':: 'This is a set of arns of destinations that will receive structured logs from the transfer server',
  with_structured_log_destinations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"structured_log_destinations" expected to be of type "set"';
    {
      structured_log_destinations+: converted,
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
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  endpoint_details:: {
    local block = self,
    new():: (
      {}
    ),
    with_address_allocation_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"address_allocation_ids" expected to be of type "set"';
      {
        address_allocation_ids: converted,
      }
    ),
    with_address_allocation_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"address_allocation_ids" expected to be of type "set"';
      {
        address_allocation_ids+: converted,
      }
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    with_vpc_endpoint_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
      {
        vpc_endpoint_id: converted,
      }
    ),
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  protocol_details:: {
    local block = self,
    new():: (
      {}
    ),
    with_as2_transports(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"as2_transports" expected to be of type "set"';
      {
        as2_transports: converted,
      }
    ),
    with_as2_transports_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"as2_transports" expected to be of type "set"';
      {
        as2_transports+: converted,
      }
    ),
    with_passive_ip(value):: (
      local converted = value;
      assert std.isString(converted) : '"passive_ip" expected to be of type "string"';
      {
        passive_ip: converted,
      }
    ),
    with_set_stat_option(value):: (
      local converted = value;
      assert std.isString(converted) : '"set_stat_option" expected to be of type "string"';
      {
        set_stat_option: converted,
      }
    ),
    with_tls_session_resumption_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_session_resumption_mode" expected to be of type "string"';
      {
        tls_session_resumption_mode: converted,
      }
    ),
  },
  s3_storage_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_directory_listing_optimization(value):: (
      local converted = value;
      assert std.isString(converted) : '"directory_listing_optimization" expected to be of type "string"';
      {
        directory_listing_optimization: converted,
      }
    ),
  },
  workflow_details:: {
    local block = self,
    new():: (
      {}
    ),
    on_partial_upload:: {
      local block = self,
      new(execution_role, workflow_id):: (
        {}
        + block.with_execution_role(execution_role)
        + block.with_workflow_id(workflow_id)
      ),
      with_execution_role(value):: (
        local converted = value;
        assert std.isString(converted) : '"execution_role" expected to be of type "string"';
        {
          execution_role: converted,
        }
      ),
      with_workflow_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"workflow_id" expected to be of type "string"';
        {
          workflow_id: converted,
        }
      ),
    },
    on_upload:: {
      local block = self,
      new(execution_role, workflow_id):: (
        {}
        + block.with_execution_role(execution_role)
        + block.with_workflow_id(workflow_id)
      ),
      with_execution_role(value):: (
        local converted = value;
        assert std.isString(converted) : '"execution_role" expected to be of type "string"';
        {
          execution_role: converted,
        }
      ),
      with_workflow_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"workflow_id" expected to be of type "string"';
        {
          workflow_id: converted,
        }
      ),
    },
    with_on_partial_upload(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_partial_upload: value,
      }
    ),
    with_on_upload(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_upload: value,
      }
    ),
    with_on_partial_upload_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_partial_upload+: converted,
      }
    ),
    with_on_upload_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_upload+: converted,
      }
    ),
  },
  with_endpoint_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_details: value,
    }
  ),
  with_protocol_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protocol_details: value,
    }
  ),
  with_s3_storage_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_storage_options: value,
    }
  ),
  with_workflow_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workflow_details: value,
    }
  ),
  with_endpoint_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_details+: converted,
    }
  ),
  with_protocol_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protocol_details+: converted,
    }
  ),
  with_s3_storage_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_storage_options+: converted,
    }
  ),
  with_workflow_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workflow_details+: converted,
    }
  ),
}
