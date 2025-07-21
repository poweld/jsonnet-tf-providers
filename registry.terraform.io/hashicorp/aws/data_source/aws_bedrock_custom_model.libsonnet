{
  local block = self,
  new(model_id):: (
    {}
    + block.with_model_id(model_id)
  ),
  with_base_model_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_model_arn" expected to be of type "string"';
    {
      base_model_arn: converted,
    }
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
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
  with_job_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"job_tags" expected to be of type "map"';
    {
      job_tags: converted,
    }
  ),
  with_model_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_arn" expected to be of type "string"';
    {
      model_arn: converted,
    }
  ),
  with_model_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_id" expected to be of type "string"';
    {
      model_id: converted,
    }
  ),
  with_model_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_kms_key_arn" expected to be of type "string"';
    {
      model_kms_key_arn: converted,
    }
  ),
  with_model_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_name" expected to be of type "string"';
    {
      model_name: converted,
    }
  ),
  with_model_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"model_tags" expected to be of type "map"';
    {
      model_tags: converted,
    }
  ),
  with_output_data_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"output_data_config" expected to be of type "list"';
    {
      output_data_config: converted,
    }
  ),
  with_output_data_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"output_data_config" expected to be of type "list"';
    {
      output_data_config+: converted,
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
  with_training_data_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"training_data_config" expected to be of type "list"';
    {
      training_data_config: converted,
    }
  ),
  with_training_data_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"training_data_config" expected to be of type "list"';
    {
      training_data_config+: converted,
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
  with_validation_data_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validation_data_config" expected to be of type "list"';
    {
      validation_data_config: converted,
    }
  ),
  with_validation_data_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validation_data_config" expected to be of type "list"';
    {
      validation_data_config+: converted,
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
}
