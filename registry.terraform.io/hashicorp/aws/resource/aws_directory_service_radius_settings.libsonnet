{
  local block = self,
  new(authentication_protocol, directory_id, display_label, radius_port, radius_retries, radius_servers, radius_timeout, shared_secret):: (
    {}
    + block.with_authentication_protocol(authentication_protocol)
    + block.with_directory_id(directory_id)
    + block.with_display_label(display_label)
    + block.with_radius_port(radius_port)
    + block.with_radius_retries(radius_retries)
    + block.with_radius_servers(radius_servers)
    + block.with_radius_timeout(radius_timeout)
    + block.with_shared_secret(shared_secret)
  ),
  with_authentication_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_protocol" expected to be of type "string"';
    {
      authentication_protocol: converted,
    }
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  with_display_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_label" expected to be of type "string"';
    {
      display_label: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_radius_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"radius_port" expected to be of type "number"';
    {
      radius_port: converted,
    }
  ),
  with_radius_retries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"radius_retries" expected to be of type "number"';
    {
      radius_retries: converted,
    }
  ),
  with_radius_servers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"radius_servers" expected to be of type "set"';
    {
      radius_servers: converted,
    }
  ),
  with_radius_servers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"radius_servers" expected to be of type "set"';
    {
      radius_servers+: converted,
    }
  ),
  with_radius_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"radius_timeout" expected to be of type "number"';
    {
      radius_timeout: converted,
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
  with_shared_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"shared_secret" expected to be of type "string"';
    {
      shared_secret: converted,
    }
  ),
  with_use_same_username(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_same_username" expected to be of type "bool"';
    {
      use_same_username: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
