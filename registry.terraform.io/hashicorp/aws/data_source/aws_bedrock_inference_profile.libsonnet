{
  local block = self,
  new(inference_profile_id):: (
    {}
    + block.with_inference_profile_id(inference_profile_id)
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_inference_profile_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"inference_profile_arn" expected to be of type "string"';
    {
      inference_profile_arn: converted,
    }
  ),
  with_inference_profile_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"inference_profile_id" expected to be of type "string"';
    {
      inference_profile_id: converted,
    }
  ),
  with_inference_profile_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"inference_profile_name" expected to be of type "string"';
    {
      inference_profile_name: converted,
    }
  ),
  with_models(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"models" expected to be of type "list"';
    {
      models: converted,
    }
  ),
  with_models_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"models" expected to be of type "list"';
    {
      models+: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
}
