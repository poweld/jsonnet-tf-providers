{
  local block = self,
  new(server_hostname, subdirectory):: (
    {}
    + block.with_server_hostname(server_hostname)
    + block.with_subdirectory(subdirectory)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_server_hostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_hostname" expected to be of type "string"';
    {
      server_hostname: converted,
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
  mount_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
  },
  on_prem_config:: {
    local block = self,
    new(agent_arns):: (
      {}
      + block.with_agent_arns(agent_arns)
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
  },
  with_mount_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mount_options: value,
    }
  ),
  with_on_prem_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_prem_config: value,
    }
  ),
  with_mount_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mount_options+: converted,
    }
  ),
  with_on_prem_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_prem_config+: converted,
    }
  ),
}
