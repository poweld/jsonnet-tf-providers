{
  local block = self,
  new(container_type, name, parent_image, version):: (
    {}
    + block.with_container_type(container_type)
    + block.with_name(name)
    + block.with_parent_image(parent_image)
    + block.with_version(version)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_container_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_type" expected to be of type "string"';
    {
      container_type: converted,
    }
  ),
  with_date_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_created" expected to be of type "string"';
    {
      date_created: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_dockerfile_template_data(value):: (
    local converted = value;
    assert std.isString(converted) : '"dockerfile_template_data" expected to be of type "string"';
    {
      dockerfile_template_data: converted,
    }
  ),
  with_dockerfile_template_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"dockerfile_template_uri" expected to be of type "string"';
    {
      dockerfile_template_uri: converted,
    }
  ),
  with_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  with_parent_image(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_image" expected to be of type "string"';
    {
      parent_image: converted,
    }
  ),
  with_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
    }
  ),
  with_platform_override(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_override" expected to be of type "string"';
    {
      platform_override: converted,
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
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  with_working_directory(value):: (
    local converted = value;
    assert std.isString(converted) : '"working_directory" expected to be of type "string"';
    {
      working_directory: converted,
    }
  ),
  component:: {
    local block = self,
    new(component_arn):: (
      {}
      + block.with_component_arn(component_arn)
    ),
    with_component_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"component_arn" expected to be of type "string"';
      {
        component_arn: converted,
      }
    ),
    parameter:: {
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
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_parameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter: value,
      }
    ),
    with_parameter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter+: converted,
      }
    ),
  },
  instance_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_image(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    block_device_mapping:: {
      local block = self,
      new():: (
        {}
      ),
      with_device_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"device_name" expected to be of type "string"';
        {
          device_name: converted,
        }
      ),
      with_no_device(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"no_device" expected to be of type "bool"';
        {
          no_device: converted,
        }
      ),
      with_virtual_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"virtual_name" expected to be of type "string"';
        {
          virtual_name: converted,
        }
      ),
      ebs:: {
        local block = self,
        new():: (
          {}
        ),
        with_delete_on_termination(value):: (
          local converted = value;
          assert std.isString(converted) : '"delete_on_termination" expected to be of type "string"';
          {
            delete_on_termination: converted,
          }
        ),
        with_encrypted(value):: (
          local converted = value;
          assert std.isString(converted) : '"encrypted" expected to be of type "string"';
          {
            encrypted: converted,
          }
        ),
        with_iops(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"iops" expected to be of type "number"';
          {
            iops: converted,
          }
        ),
        with_kms_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
          {
            kms_key_id: converted,
          }
        ),
        with_snapshot_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"snapshot_id" expected to be of type "string"';
          {
            snapshot_id: converted,
          }
        ),
        with_throughput(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
          {
            throughput: converted,
          }
        ),
        with_volume_size(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
          {
            volume_size: converted,
          }
        ),
        with_volume_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"volume_type" expected to be of type "string"';
          {
            volume_type: converted,
          }
        ),
      },
      with_ebs(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs: value,
        }
      ),
      with_ebs_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs+: converted,
        }
      ),
    },
    with_block_device_mapping(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        block_device_mapping: value,
      }
    ),
    with_block_device_mapping_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        block_device_mapping+: converted,
      }
    ),
  },
  target_repository:: {
    local block = self,
    new(repository_name, service):: (
      {}
      + block.with_repository_name(repository_name)
      + block.with_service(service)
    ),
    with_repository_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository_name" expected to be of type "string"';
      {
        repository_name: converted,
      }
    ),
    with_service(value):: (
      local converted = value;
      assert std.isString(converted) : '"service" expected to be of type "string"';
      {
        service: converted,
      }
    ),
  },
  with_component(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      component: value,
    }
  ),
  with_instance_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_configuration: value,
    }
  ),
  with_target_repository(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_repository: value,
    }
  ),
  with_component_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      component+: converted,
    }
  ),
  with_instance_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_configuration+: converted,
    }
  ),
  with_target_repository_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_repository+: converted,
    }
  ),
}
