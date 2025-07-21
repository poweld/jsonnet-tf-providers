{
  local block = self,
  new(infrastructure_configuration_arn):: (
    {}
    + block.with_infrastructure_configuration_arn(infrastructure_configuration_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_container_recipe_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_recipe_arn" expected to be of type "string"';
    {
      container_recipe_arn: converted,
    }
  ),
  with_date_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_created" expected to be of type "string"';
    {
      date_created: converted,
    }
  ),
  with_distribution_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"distribution_configuration_arn" expected to be of type "string"';
    {
      distribution_configuration_arn: converted,
    }
  ),
  with_enhanced_image_metadata_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enhanced_image_metadata_enabled" expected to be of type "bool"';
    {
      enhanced_image_metadata_enabled: converted,
    }
  ),
  with_execution_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role" expected to be of type "string"';
    {
      execution_role: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_recipe_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_recipe_arn" expected to be of type "string"';
    {
      image_recipe_arn: converted,
    }
  ),
  with_infrastructure_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"infrastructure_configuration_arn" expected to be of type "string"';
    {
      infrastructure_configuration_arn: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_os_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"os_version" expected to be of type "string"';
    {
      os_version: converted,
    }
  ),
  with_output_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"output_resources" expected to be of type "list"';
    {
      output_resources: converted,
    }
  ),
  with_output_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"output_resources" expected to be of type "list"';
    {
      output_resources+: converted,
    }
  ),
  with_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
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
  image_scanning_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_image_scanning_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"image_scanning_enabled" expected to be of type "bool"';
      {
        image_scanning_enabled: converted,
      }
    ),
    ecr_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_container_tags(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"container_tags" expected to be of type "set"';
        {
          container_tags: converted,
        }
      ),
      with_container_tags_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"container_tags" expected to be of type "set"';
        {
          container_tags+: converted,
        }
      ),
      with_repository_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"repository_name" expected to be of type "string"';
        {
          repository_name: converted,
        }
      ),
    },
    with_ecr_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_configuration: value,
      }
    ),
    with_ecr_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_configuration+: converted,
      }
    ),
  },
  image_tests_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_image_tests_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"image_tests_enabled" expected to be of type "bool"';
      {
        image_tests_enabled: converted,
      }
    ),
    with_timeout_minutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout_minutes" expected to be of type "number"';
      {
        timeout_minutes: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  workflow:: {
    local block = self,
    new(workflow_arn):: (
      {}
      + block.with_workflow_arn(workflow_arn)
    ),
    with_on_failure(value):: (
      local converted = value;
      assert std.isString(converted) : '"on_failure" expected to be of type "string"';
      {
        on_failure: converted,
      }
    ),
    with_parallel_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"parallel_group" expected to be of type "string"';
      {
        parallel_group: converted,
      }
    ),
    with_workflow_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"workflow_arn" expected to be of type "string"';
      {
        workflow_arn: converted,
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
  with_image_scanning_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_scanning_configuration: value,
    }
  ),
  with_image_tests_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_tests_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_workflow(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workflow: value,
    }
  ),
  with_image_scanning_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_scanning_configuration+: converted,
    }
  ),
  with_image_tests_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_tests_configuration+: converted,
    }
  ),
  with_workflow_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workflow+: converted,
    }
  ),
}
