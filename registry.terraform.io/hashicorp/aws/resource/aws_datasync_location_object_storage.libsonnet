{
  local block = self,
  new(agent_arns, bucket_name, server_hostname):: (
    {}
    + block.with_agent_arns(agent_arns)
    + block.with_bucket_name(bucket_name)
    + block.with_server_hostname(server_hostname)
  ),
  with_access_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_key" expected to be of type "string"';
    {
      access_key: converted,
    }
  ),
  with_agent_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns: converted,
    }
  ),
  with_agent_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bucket_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
    {
      bucket_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_secret_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_key" expected to be of type "string"';
    {
      secret_key: converted,
    }
  ),
  with_server_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_certificate" expected to be of type "string"';
    {
      server_certificate: converted,
    }
  ),
  with_server_hostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_hostname" expected to be of type "string"';
    {
      server_hostname: converted,
    }
  ),
  with_server_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"server_port" expected to be of type "number"';
    {
      server_port: converted,
    }
  ),
  with_server_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_protocol" expected to be of type "string"';
    {
      server_protocol: converted,
    }
  ),
  with_subdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
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
  with_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
}
