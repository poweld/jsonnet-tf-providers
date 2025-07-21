{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_api_key_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key_source" expected to be of type "string"';
    {
      api_key_source: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_binary_media_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"binary_media_types" expected to be of type "list"';
    {
      binary_media_types: converted,
    }
  ),
  with_binary_media_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"binary_media_types" expected to be of type "list"';
    {
      binary_media_types+: converted,
    }
  ),
  with_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
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
  with_disable_execute_api_endpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_execute_api_endpoint" expected to be of type "bool"';
    {
      disable_execute_api_endpoint: converted,
    }
  ),
  with_execution_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_arn" expected to be of type "string"';
    {
      execution_arn: converted,
    }
  ),
  with_fail_on_warnings(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fail_on_warnings" expected to be of type "bool"';
    {
      fail_on_warnings: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_minimum_compression_size(value):: (
    local converted = value;
    assert std.isString(converted) : '"minimum_compression_size" expected to be of type "string"';
    {
      minimum_compression_size: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  with_put_rest_api_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"put_rest_api_mode" expected to be of type "string"';
    {
      put_rest_api_mode: converted,
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
  with_root_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_resource_id" expected to be of type "string"';
    {
      root_resource_id: converted,
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
  endpoint_configuration:: {
    local block = self,
    new(types):: (
      {}
      + block.with_types(types)
    ),
    with_ip_address_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    with_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"types" expected to be of type "list"';
      {
        types: converted,
      }
    ),
    with_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"types" expected to be of type "list"';
      {
        types+: converted,
      }
    ),
    with_vpc_endpoint_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_endpoint_ids" expected to be of type "set"';
      {
        vpc_endpoint_ids: converted,
      }
    ),
    with_vpc_endpoint_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_endpoint_ids" expected to be of type "set"';
      {
        vpc_endpoint_ids+: converted,
      }
    ),
  },
  with_endpoint_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration: value,
    }
  ),
  with_endpoint_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration+: converted,
    }
  ),
}
