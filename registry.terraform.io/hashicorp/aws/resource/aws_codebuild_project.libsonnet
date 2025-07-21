{
  local block = self,
  new(name, service_role):: (
    {}
    + block.with_name(name)
    + block.with_service_role(service_role)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_badge_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"badge_enabled" expected to be of type "bool"';
    {
      badge_enabled: converted,
    }
  ),
  with_badge_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"badge_url" expected to be of type "string"';
    {
      badge_url: converted,
    }
  ),
  with_build_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"build_timeout" expected to be of type "number"';
    {
      build_timeout: converted,
    }
  ),
  with_concurrent_build_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"concurrent_build_limit" expected to be of type "number"';
    {
      concurrent_build_limit: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_encryption_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_key" expected to be of type "string"';
    {
      encryption_key: converted,
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
  with_project_visibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_visibility" expected to be of type "string"';
    {
      project_visibility: converted,
    }
  ),
  with_public_project_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_project_alias" expected to be of type "string"';
    {
      public_project_alias: converted,
    }
  ),
  with_queued_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"queued_timeout" expected to be of type "number"';
    {
      queued_timeout: converted,
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
  with_resource_access_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_access_role" expected to be of type "string"';
    {
      resource_access_role: converted,
    }
  ),
  with_service_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  with_source_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_version" expected to be of type "string"';
    {
      source_version: converted,
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
  artifacts:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_artifact_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"artifact_identifier" expected to be of type "string"';
      {
        artifact_identifier: converted,
      }
    ),
    with_bucket_owner_access(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_owner_access" expected to be of type "string"';
      {
        bucket_owner_access: converted,
      }
    ),
    with_encryption_disabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"encryption_disabled" expected to be of type "bool"';
      {
        encryption_disabled: converted,
      }
    ),
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_namespace_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace_type" expected to be of type "string"';
      {
        namespace_type: converted,
      }
    ),
    with_override_artifact_name(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"override_artifact_name" expected to be of type "bool"';
      {
        override_artifact_name: converted,
      }
    ),
    with_packaging(value):: (
      local converted = value;
      assert std.isString(converted) : '"packaging" expected to be of type "string"';
      {
        packaging: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  build_batch_config:: {
    local block = self,
    new(service_role):: (
      {}
      + block.with_service_role(service_role)
    ),
    with_combine_artifacts(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"combine_artifacts" expected to be of type "bool"';
      {
        combine_artifacts: converted,
      }
    ),
    with_service_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_role" expected to be of type "string"';
      {
        service_role: converted,
      }
    ),
    with_timeout_in_mins(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout_in_mins" expected to be of type "number"';
      {
        timeout_in_mins: converted,
      }
    ),
    restrictions:: {
      local block = self,
      new():: (
        {}
      ),
      with_compute_types_allowed(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"compute_types_allowed" expected to be of type "list"';
        {
          compute_types_allowed: converted,
        }
      ),
      with_compute_types_allowed_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"compute_types_allowed" expected to be of type "list"';
        {
          compute_types_allowed+: converted,
        }
      ),
      with_maximum_builds_allowed(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_builds_allowed" expected to be of type "number"';
        {
          maximum_builds_allowed: converted,
        }
      ),
    },
    with_restrictions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        restrictions: value,
      }
    ),
    with_restrictions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        restrictions+: converted,
      }
    ),
  },
  cache:: {
    local block = self,
    new():: (
      {}
    ),
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    with_modes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"modes" expected to be of type "list"';
      {
        modes: converted,
      }
    ),
    with_modes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"modes" expected to be of type "list"';
      {
        modes+: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  environment:: {
    local block = self,
    new(compute_type, image, type):: (
      {}
      + block.with_compute_type(compute_type)
      + block.with_image(image)
      + block.with_type(type)
    ),
    with_certificate(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate" expected to be of type "string"';
      {
        certificate: converted,
      }
    ),
    with_compute_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"compute_type" expected to be of type "string"';
      {
        compute_type: converted,
      }
    ),
    with_image(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    with_image_pull_credentials_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"image_pull_credentials_type" expected to be of type "string"';
      {
        image_pull_credentials_type: converted,
      }
    ),
    with_privileged_mode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"privileged_mode" expected to be of type "bool"';
      {
        privileged_mode: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    docker_server:: {
      local block = self,
      new(compute_type):: (
        {}
        + block.with_compute_type(compute_type)
      ),
      with_compute_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"compute_type" expected to be of type "string"';
        {
          compute_type: converted,
        }
      ),
      with_security_group_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
        {
          security_group_ids: converted,
        }
      ),
      with_security_group_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
        {
          security_group_ids+: converted,
        }
      ),
    },
    environment_variable:: {
      local block = self,
      new(name, value):: (
        {}
        + block.with_name(name)
        + block.with_value(value)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
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
    fleet:: {
      local block = self,
      new():: (
        {}
      ),
      with_fleet_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"fleet_arn" expected to be of type "string"';
        {
          fleet_arn: converted,
        }
      ),
    },
    registry_credential:: {
      local block = self,
      new(credential, credential_provider):: (
        {}
        + block.with_credential(credential)
        + block.with_credential_provider(credential_provider)
      ),
      with_credential(value):: (
        local converted = value;
        assert std.isString(converted) : '"credential" expected to be of type "string"';
        {
          credential: converted,
        }
      ),
      with_credential_provider(value):: (
        local converted = value;
        assert std.isString(converted) : '"credential_provider" expected to be of type "string"';
        {
          credential_provider: converted,
        }
      ),
    },
    with_docker_server(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_server: value,
      }
    ),
    with_environment_variable(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        environment_variable: value,
      }
    ),
    with_fleet(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fleet: value,
      }
    ),
    with_registry_credential(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        registry_credential: value,
      }
    ),
    with_docker_server_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_server+: converted,
      }
    ),
    with_environment_variable_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        environment_variable+: converted,
      }
    ),
    with_fleet_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fleet+: converted,
      }
    ),
    with_registry_credential_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        registry_credential+: converted,
      }
    ),
  },
  file_system_locations:: {
    local block = self,
    new():: (
      {}
    ),
    with_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"identifier" expected to be of type "string"';
      {
        identifier: converted,
      }
    ),
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    with_mount_options(value):: (
      local converted = value;
      assert std.isString(converted) : '"mount_options" expected to be of type "string"';
      {
        mount_options: converted,
      }
    ),
    with_mount_point(value):: (
      local converted = value;
      assert std.isString(converted) : '"mount_point" expected to be of type "string"';
      {
        mount_point: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  logs_config:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_logs:: {
      local block = self,
      new():: (
        {}
      ),
      with_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"group_name" expected to be of type "string"';
        {
          group_name: converted,
        }
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
      with_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_name" expected to be of type "string"';
        {
          stream_name: converted,
        }
      ),
    },
    s3_logs:: {
      local block = self,
      new():: (
        {}
      ),
      with_bucket_owner_access(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner_access" expected to be of type "string"';
        {
          bucket_owner_access: converted,
        }
      ),
      with_encryption_disabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encryption_disabled" expected to be of type "bool"';
        {
          encryption_disabled: converted,
        }
      ),
      with_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"location" expected to be of type "string"';
        {
          location: converted,
        }
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    with_cloudwatch_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    with_s3_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs: value,
      }
    ),
    with_cloudwatch_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs+: converted,
      }
    ),
    with_s3_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs+: converted,
      }
    ),
  },
  secondary_artifacts:: {
    local block = self,
    new(artifact_identifier, type):: (
      {}
      + block.with_artifact_identifier(artifact_identifier)
      + block.with_type(type)
    ),
    with_artifact_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"artifact_identifier" expected to be of type "string"';
      {
        artifact_identifier: converted,
      }
    ),
    with_bucket_owner_access(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_owner_access" expected to be of type "string"';
      {
        bucket_owner_access: converted,
      }
    ),
    with_encryption_disabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"encryption_disabled" expected to be of type "bool"';
      {
        encryption_disabled: converted,
      }
    ),
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_namespace_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace_type" expected to be of type "string"';
      {
        namespace_type: converted,
      }
    ),
    with_override_artifact_name(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"override_artifact_name" expected to be of type "bool"';
      {
        override_artifact_name: converted,
      }
    ),
    with_packaging(value):: (
      local converted = value;
      assert std.isString(converted) : '"packaging" expected to be of type "string"';
      {
        packaging: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  secondary_source_version:: {
    local block = self,
    new(source_identifier, source_version):: (
      {}
      + block.with_source_identifier(source_identifier)
      + block.with_source_version(source_version)
    ),
    with_source_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_identifier" expected to be of type "string"';
      {
        source_identifier: converted,
      }
    ),
    with_source_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_version" expected to be of type "string"';
      {
        source_version: converted,
      }
    ),
  },
  secondary_sources:: {
    local block = self,
    new(source_identifier, type):: (
      {}
      + block.with_source_identifier(source_identifier)
      + block.with_type(type)
    ),
    with_buildspec(value):: (
      local converted = value;
      assert std.isString(converted) : '"buildspec" expected to be of type "string"';
      {
        buildspec: converted,
      }
    ),
    with_git_clone_depth(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"git_clone_depth" expected to be of type "number"';
      {
        git_clone_depth: converted,
      }
    ),
    with_insecure_ssl(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"insecure_ssl" expected to be of type "bool"';
      {
        insecure_ssl: converted,
      }
    ),
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    with_report_build_status(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"report_build_status" expected to be of type "bool"';
      {
        report_build_status: converted,
      }
    ),
    with_source_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_identifier" expected to be of type "string"';
      {
        source_identifier: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    auth:: {
      local block = self,
      new(resource, type):: (
        {}
        + block.with_resource(resource)
        + block.with_type(type)
      ),
      with_resource(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource" expected to be of type "string"';
        {
          resource: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    build_status_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_context(value):: (
        local converted = value;
        assert std.isString(converted) : '"context" expected to be of type "string"';
        {
          context: converted,
        }
      ),
      with_target_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_url" expected to be of type "string"';
        {
          target_url: converted,
        }
      ),
    },
    git_submodules_config:: {
      local block = self,
      new(fetch_submodules):: (
        {}
        + block.with_fetch_submodules(fetch_submodules)
      ),
      with_fetch_submodules(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"fetch_submodules" expected to be of type "bool"';
        {
          fetch_submodules: converted,
        }
      ),
    },
    with_auth(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth: value,
      }
    ),
    with_build_status_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        build_status_config: value,
      }
    ),
    with_git_submodules_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_submodules_config: value,
      }
    ),
    with_auth_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth+: converted,
      }
    ),
    with_build_status_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        build_status_config+: converted,
      }
    ),
    with_git_submodules_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_submodules_config+: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_buildspec(value):: (
      local converted = value;
      assert std.isString(converted) : '"buildspec" expected to be of type "string"';
      {
        buildspec: converted,
      }
    ),
    with_git_clone_depth(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"git_clone_depth" expected to be of type "number"';
      {
        git_clone_depth: converted,
      }
    ),
    with_insecure_ssl(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"insecure_ssl" expected to be of type "bool"';
      {
        insecure_ssl: converted,
      }
    ),
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    with_report_build_status(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"report_build_status" expected to be of type "bool"';
      {
        report_build_status: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    auth:: {
      local block = self,
      new(resource, type):: (
        {}
        + block.with_resource(resource)
        + block.with_type(type)
      ),
      with_resource(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource" expected to be of type "string"';
        {
          resource: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    build_status_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_context(value):: (
        local converted = value;
        assert std.isString(converted) : '"context" expected to be of type "string"';
        {
          context: converted,
        }
      ),
      with_target_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_url" expected to be of type "string"';
        {
          target_url: converted,
        }
      ),
    },
    git_submodules_config:: {
      local block = self,
      new(fetch_submodules):: (
        {}
        + block.with_fetch_submodules(fetch_submodules)
      ),
      with_fetch_submodules(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"fetch_submodules" expected to be of type "bool"';
        {
          fetch_submodules: converted,
        }
      ),
    },
    with_auth(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth: value,
      }
    ),
    with_build_status_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        build_status_config: value,
      }
    ),
    with_git_submodules_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_submodules_config: value,
      }
    ),
    with_auth_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth+: converted,
      }
    ),
    with_build_status_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        build_status_config+: converted,
      }
    ),
    with_git_submodules_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_submodules_config+: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(security_group_ids, subnets, vpc_id):: (
      {}
      + block.with_security_group_ids(security_group_ids)
      + block.with_subnets(subnets)
      + block.with_vpc_id(vpc_id)
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
    with_subnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    with_subnets_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
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
  with_artifacts(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifacts: value,
    }
  ),
  with_build_batch_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      build_batch_config: value,
    }
  ),
  with_cache(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache: value,
    }
  ),
  with_environment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      environment: value,
    }
  ),
  with_file_system_locations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      file_system_locations: value,
    }
  ),
  with_logs_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs_config: value,
    }
  ),
  with_secondary_artifacts(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_artifacts: value,
    }
  ),
  with_secondary_source_version(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_source_version: value,
    }
  ),
  with_secondary_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_sources: value,
    }
  ),
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_artifacts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifacts+: converted,
    }
  ),
  with_build_batch_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      build_batch_config+: converted,
    }
  ),
  with_cache_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache+: converted,
    }
  ),
  with_environment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      environment+: converted,
    }
  ),
  with_file_system_locations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      file_system_locations+: converted,
    }
  ),
  with_logs_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs_config+: converted,
    }
  ),
  with_secondary_artifacts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_artifacts+: converted,
    }
  ),
  with_secondary_source_version_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_source_version+: converted,
    }
  ),
  with_secondary_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_sources+: converted,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
