{
  local block = self,
  new(domain, repository):: (
    {}
    + block.with_domain(domain)
    + block.with_repository(repository)
  ),
  with_administrator_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"administrator_account" expected to be of type "string"';
    {
      administrator_account: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_domain_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_owner" expected to be of type "string"';
    {
      domain_owner: converted,
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
  with_repository(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository" expected to be of type "string"';
    {
      repository: converted,
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
  external_connections:: {
    local block = self,
    new(external_connection_name):: (
      {}
      + block.with_external_connection_name(external_connection_name)
    ),
    with_external_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_connection_name" expected to be of type "string"';
      {
        external_connection_name: converted,
      }
    ),
    with_package_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"package_format" expected to be of type "string"';
      {
        package_format: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  upstream:: {
    local block = self,
    new(repository_name):: (
      {}
      + block.with_repository_name(repository_name)
    ),
    with_repository_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository_name" expected to be of type "string"';
      {
        repository_name: converted,
      }
    ),
  },
  with_external_connections(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_connections: value,
    }
  ),
  with_upstream(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      upstream: value,
    }
  ),
  with_external_connections_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_connections+: converted,
    }
  ),
  with_upstream_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      upstream+: converted,
    }
  ),
}
