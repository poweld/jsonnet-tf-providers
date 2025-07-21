{
  local block = self,
  new(base_model_identifier, custom_model_name, hyperparameters, job_name, role_arn):: (
    {}
    + block.with_base_model_identifier(base_model_identifier)
    + block.with_custom_model_name(custom_model_name)
    + block.with_hyperparameters(hyperparameters)
    + block.with_job_name(job_name)
    + block.with_role_arn(role_arn)
  ),
  with_base_model_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_model_identifier" expected to be of type "string"';
    {
      base_model_identifier: converted,
    }
  ),
  with_custom_model_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_model_arn" expected to be of type "string"';
    {
      custom_model_arn: converted,
    }
  ),
  with_custom_model_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_model_kms_key_id" expected to be of type "string"';
    {
      custom_model_kms_key_id: converted,
    }
  ),
  with_custom_model_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_model_name" expected to be of type "string"';
    {
      custom_model_name: converted,
    }
  ),
  with_customization_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"customization_type" expected to be of type "string"';
    {
      customization_type: converted,
    }
  ),
  with_hyperparameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"hyperparameters" expected to be of type "map"';
    {
      hyperparameters: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_job_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_arn" expected to be of type "string"';
    {
      job_arn: converted,
    }
  ),
  with_job_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_name" expected to be of type "string"';
    {
      job_name: converted,
    }
  ),
  with_job_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_status" expected to be of type "string"';
    {
      job_status: converted,
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
  with_training_metrics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"training_metrics" expected to be of type "list"';
    {
      training_metrics: converted,
    }
  ),
  with_training_metrics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"training_metrics" expected to be of type "list"';
    {
      training_metrics+: converted,
    }
  ),
  with_validation_metrics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validation_metrics" expected to be of type "list"';
    {
      validation_metrics: converted,
    }
  ),
  with_validation_metrics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validation_metrics" expected to be of type "list"';
    {
      validation_metrics+: converted,
    }
  ),
  output_data_config:: {
    local block = self,
    new(s3_uri):: (
      {}
      + block.with_s3_uri(s3_uri)
    ),
    with_s3_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
      {
        s3_uri: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  training_data_config:: {
    local block = self,
    new(s3_uri):: (
      {}
      + block.with_s3_uri(s3_uri)
    ),
    with_s3_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
      {
        s3_uri: converted,
      }
    ),
  },
  validation_data_config:: {
    local block = self,
    new():: (
      {}
    ),
    validator:: {
      local block = self,
      new(s3_uri):: (
        {}
        + block.with_s3_uri(s3_uri)
      ),
      with_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    with_validator(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        validator: value,
      }
    ),
    with_validator_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        validator+: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(security_group_ids, subnet_ids):: (
      {}
      + block.with_security_group_ids(security_group_ids)
      + block.with_subnet_ids(subnet_ids)
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
  },
  with_output_data_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_data_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_training_data_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      training_data_config: value,
    }
  ),
  with_validation_data_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_data_config: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_output_data_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_data_config+: converted,
    }
  ),
  with_training_data_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      training_data_config+: converted,
    }
  ),
  with_validation_data_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_data_config+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
