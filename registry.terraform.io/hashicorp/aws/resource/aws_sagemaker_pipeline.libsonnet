{
  local block = self,
  new(pipeline_display_name, pipeline_name):: (
    {}
    + block.with_pipeline_display_name(pipeline_display_name)
    + block.with_pipeline_name(pipeline_name)
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
  with_pipeline_definition(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_definition" expected to be of type "string"';
    {
      pipeline_definition: converted,
    }
  ),
  with_pipeline_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_description" expected to be of type "string"';
    {
      pipeline_description: converted,
    }
  ),
  with_pipeline_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_display_name" expected to be of type "string"';
    {
      pipeline_display_name: converted,
    }
  ),
  with_pipeline_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_name" expected to be of type "string"';
    {
      pipeline_name: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  parallelism_configuration:: {
    local block = self,
    new(max_parallel_execution_steps):: (
      {}
      + block.with_max_parallel_execution_steps(max_parallel_execution_steps)
    ),
    with_max_parallel_execution_steps(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_parallel_execution_steps" expected to be of type "number"';
      {
        max_parallel_execution_steps: converted,
      }
    ),
  },
  pipeline_definition_s3_location:: {
    local block = self,
    new(bucket, object_key):: (
      {}
      + block.with_bucket(bucket)
      + block.with_object_key(object_key)
    ),
    with_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    with_object_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_key" expected to be of type "string"';
      {
        object_key: converted,
      }
    ),
    with_version_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"version_id" expected to be of type "string"';
      {
        version_id: converted,
      }
    ),
  },
  with_parallelism_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parallelism_configuration: value,
    }
  ),
  with_pipeline_definition_s3_location(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_definition_s3_location: value,
    }
  ),
  with_parallelism_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parallelism_configuration+: converted,
    }
  ),
  with_pipeline_definition_s3_location_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_definition_s3_location+: converted,
    }
  ),
}
