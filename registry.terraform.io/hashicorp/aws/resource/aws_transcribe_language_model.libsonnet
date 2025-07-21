{
  local block = self,
  new(base_model_name, language_code, model_name):: (
    {}
    + block.with_base_model_name(base_model_name)
    + block.with_language_code(language_code)
    + block.with_model_name(model_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_model_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_model_name" expected to be of type "string"';
    {
      base_model_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_language_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
    }
  ),
  with_model_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_name" expected to be of type "string"';
    {
      model_name: converted,
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
  input_data_config:: {
    local block = self,
    new(data_access_role_arn, s3_uri):: (
      {}
      + block.with_data_access_role_arn(data_access_role_arn)
      + block.with_s3_uri(s3_uri)
    ),
    with_data_access_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_access_role_arn" expected to be of type "string"';
      {
        data_access_role_arn: converted,
      }
    ),
    with_s3_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
      {
        s3_uri: converted,
      }
    ),
    with_tuning_data_s3_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"tuning_data_s3_uri" expected to be of type "string"';
      {
        tuning_data_s3_uri: converted,
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
  with_input_data_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_data_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_input_data_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_data_config+: converted,
    }
  ),
}
