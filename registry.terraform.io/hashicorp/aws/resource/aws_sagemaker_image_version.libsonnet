{
  local block = self,
  new(base_image, image_name):: (
    {}
    + block.with_base_image(base_image)
    + block.with_image_name(image_name)
  ),
  with_aliases(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases: converted,
    }
  ),
  with_aliases_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_image(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_image" expected to be of type "string"';
    {
      base_image: converted,
    }
  ),
  with_container_image(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_image" expected to be of type "string"';
    {
      container_image: converted,
    }
  ),
  with_horovod(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"horovod" expected to be of type "bool"';
    {
      horovod: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_arn" expected to be of type "string"';
    {
      image_arn: converted,
    }
  ),
  with_image_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_name" expected to be of type "string"';
    {
      image_name: converted,
    }
  ),
  with_job_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_type" expected to be of type "string"';
    {
      job_type: converted,
    }
  ),
  with_ml_framework(value):: (
    local converted = value;
    assert std.isString(converted) : '"ml_framework" expected to be of type "string"';
    {
      ml_framework: converted,
    }
  ),
  with_processor(value):: (
    local converted = value;
    assert std.isString(converted) : '"processor" expected to be of type "string"';
    {
      processor: converted,
    }
  ),
  with_programming_lang(value):: (
    local converted = value;
    assert std.isString(converted) : '"programming_lang" expected to be of type "string"';
    {
      programming_lang: converted,
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
  with_release_notes(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_notes" expected to be of type "string"';
    {
      release_notes: converted,
    }
  ),
  with_vendor_guidance(value):: (
    local converted = value;
    assert std.isString(converted) : '"vendor_guidance" expected to be of type "string"';
    {
      vendor_guidance: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version" expected to be of type "number"';
    {
      version: converted,
    }
  ),
}
