{
  local block = self,
  new():: (
    {}
  ),
  with_by_customization_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"by_customization_type" expected to be of type "string"';
    {
      by_customization_type: converted,
    }
  ),
  with_by_inference_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"by_inference_type" expected to be of type "string"';
    {
      by_inference_type: converted,
    }
  ),
  with_by_output_modality(value):: (
    local converted = value;
    assert std.isString(converted) : '"by_output_modality" expected to be of type "string"';
    {
      by_output_modality: converted,
    }
  ),
  with_by_provider(value):: (
    local converted = value;
    assert std.isString(converted) : '"by_provider" expected to be of type "string"';
    {
      by_provider: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_model_summaries(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"model_summaries" expected to be of type "list"';
    {
      model_summaries: converted,
    }
  ),
  with_model_summaries_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"model_summaries" expected to be of type "list"';
    {
      model_summaries+: converted,
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
}
