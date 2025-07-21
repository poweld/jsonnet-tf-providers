{
  local block = self,
  new(name, role_arn):: (
    {}
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arguments(value):: (
    local converted = value;
    assert std.isObject(converted) : '"arguments" expected to be of type "map"';
    {
      arguments: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_extra_jars_s3_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"extra_jars_s3_path" expected to be of type "string"';
    {
      extra_jars_s3_path: converted,
    }
  ),
  with_extra_python_libs_s3_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"extra_python_libs_s3_path" expected to be of type "string"';
    {
      extra_python_libs_s3_path: converted,
    }
  ),
  with_failure_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"failure_reason" expected to be of type "string"';
    {
      failure_reason: converted,
    }
  ),
  with_glue_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"glue_version" expected to be of type "string"';
    {
      glue_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_number_of_nodes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_nodes" expected to be of type "number"';
    {
      number_of_nodes: converted,
    }
  ),
  with_number_of_workers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_workers" expected to be of type "number"';
    {
      number_of_workers: converted,
    }
  ),
  with_private_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_address" expected to be of type "string"';
    {
      private_address: converted,
    }
  ),
  with_public_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_address" expected to be of type "string"';
    {
      public_address: converted,
    }
  ),
  with_public_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key" expected to be of type "string"';
    {
      public_key: converted,
    }
  ),
  with_public_keys(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"public_keys" expected to be of type "set"';
    {
      public_keys: converted,
    }
  ),
  with_public_keys_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"public_keys" expected to be of type "set"';
    {
      public_keys+: converted,
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
  with_security_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
    {
      security_configuration: converted,
    }
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_worker_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"worker_type" expected to be of type "string"';
    {
      worker_type: converted,
    }
  ),
  with_yarn_endpoint_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"yarn_endpoint_address" expected to be of type "string"';
    {
      yarn_endpoint_address: converted,
    }
  ),
  with_zeppelin_remote_spark_interpreter_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"zeppelin_remote_spark_interpreter_port" expected to be of type "number"';
    {
      zeppelin_remote_spark_interpreter_port: converted,
    }
  ),
}
