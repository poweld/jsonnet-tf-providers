{
  local block = self,
  new(agent_arns, authentication_type, container_url):: (
    {}
    + block.with_agent_arns(agent_arns)
    + block.with_authentication_type(authentication_type)
    + block.with_container_url(container_url)
  ),
  with_access_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_tier" expected to be of type "string"';
    {
      access_tier: converted,
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
  with_authentication_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
    }
  ),
  with_blob_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"blob_type" expected to be of type "string"';
    {
      blob_type: converted,
    }
  ),
  with_container_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_url" expected to be of type "string"';
    {
      container_url: converted,
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
  sas_configuration:: {
    local block = self,
    new(token):: (
      {}
      + block.with_token(token)
    ),
    with_token(value):: (
      local converted = value;
      assert std.isString(converted) : '"token" expected to be of type "string"';
      {
        token: converted,
      }
    ),
  },
  with_sas_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sas_configuration: value,
    }
  ),
  with_sas_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sas_configuration+: converted,
    }
  ),
}
