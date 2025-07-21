{
  local block = self,
  new(domain_name, rule_type):: (
    {}
    + block.with_domain_name(domain_name)
    + block.with_rule_type(rule_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
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
  with_resolver_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolver_endpoint_id" expected to be of type "string"';
    {
      resolver_endpoint_id: converted,
    }
  ),
  with_rule_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_type" expected to be of type "string"';
    {
      rule_type: converted,
    }
  ),
  with_share_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"share_status" expected to be of type "string"';
    {
      share_status: converted,
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
  target_ip:: {
    local block = self,
    new():: (
      {}
    ),
    with_ip(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip" expected to be of type "string"';
      {
        ip: converted,
      }
    ),
    with_ipv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6" expected to be of type "string"';
      {
        ipv6: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
  },
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  with_target_ip(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_ip: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_target_ip_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_ip+: converted,
    }
  ),
}
