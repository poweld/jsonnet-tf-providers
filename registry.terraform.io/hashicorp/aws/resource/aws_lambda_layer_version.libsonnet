{
  local block = self,
  new(layer_name):: (
    {}
    + block.with_layer_name(layer_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_code_sha256(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_sha256" expected to be of type "string"';
    {
      code_sha256: converted,
    }
  ),
  with_compatible_architectures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compatible_architectures" expected to be of type "set"';
    {
      compatible_architectures: converted,
    }
  ),
  with_compatible_architectures_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compatible_architectures" expected to be of type "set"';
    {
      compatible_architectures+: converted,
    }
  ),
  with_compatible_runtimes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compatible_runtimes" expected to be of type "set"';
    {
      compatible_runtimes: converted,
    }
  ),
  with_compatible_runtimes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compatible_runtimes" expected to be of type "set"';
    {
      compatible_runtimes+: converted,
    }
  ),
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_filename(value):: (
    local converted = value;
    assert std.isString(converted) : '"filename" expected to be of type "string"';
    {
      filename: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_layer_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"layer_arn" expected to be of type "string"';
    {
      layer_arn: converted,
    }
  ),
  with_layer_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"layer_name" expected to be of type "string"';
    {
      layer_name: converted,
    }
  ),
  with_license_info(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_info" expected to be of type "string"';
    {
      license_info: converted,
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
  with_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  with_s3_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key" expected to be of type "string"';
    {
      s3_key: converted,
    }
  ),
  with_s3_object_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_object_version" expected to be of type "string"';
    {
      s3_object_version: converted,
    }
  ),
  with_signing_job_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_job_arn" expected to be of type "string"';
    {
      signing_job_arn: converted,
    }
  ),
  with_signing_profile_version_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_profile_version_arn" expected to be of type "string"';
    {
      signing_profile_version_arn: converted,
    }
  ),
  with_skip_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  with_source_code_hash(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_code_hash" expected to be of type "string"';
    {
      source_code_hash: converted,
    }
  ),
  with_source_code_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"source_code_size" expected to be of type "number"';
    {
      source_code_size: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
}
