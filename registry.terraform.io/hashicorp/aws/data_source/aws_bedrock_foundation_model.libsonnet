{
  local block = self,
  new(model_id):: (
    {}
    + block.with_model_id(model_id)
  ),
  with_customizations_supported(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"customizations_supported" expected to be of type "set"';
    {
      customizations_supported: converted,
    }
  ),
  with_customizations_supported_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"customizations_supported" expected to be of type "set"';
    {
      customizations_supported+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_inference_types_supported(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inference_types_supported" expected to be of type "set"';
    {
      inference_types_supported: converted,
    }
  ),
  with_inference_types_supported_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inference_types_supported" expected to be of type "set"';
    {
      inference_types_supported+: converted,
    }
  ),
  with_input_modalities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"input_modalities" expected to be of type "set"';
    {
      input_modalities: converted,
    }
  ),
  with_input_modalities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"input_modalities" expected to be of type "set"';
    {
      input_modalities+: converted,
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
  with_model_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_name" expected to be of type "string"';
    {
      model_name: converted,
    }
  ),
  with_output_modalities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"output_modalities" expected to be of type "set"';
    {
      output_modalities: converted,
    }
  ),
  with_output_modalities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"output_modalities" expected to be of type "set"';
    {
      output_modalities+: converted,
    }
  ),
  with_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
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
  with_response_streaming_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"response_streaming_supported" expected to be of type "bool"';
    {
      response_streaming_supported: converted,
    }
  ),
}
