{
  local block = self,
  new():: (
    {}
  ),
  with_alpn_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"alpn_policy" expected to be of type "string"';
    {
      alpn_policy: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  with_default_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"default_action" expected to be of type "list"';
    {
      default_action: converted,
    }
  ),
  with_default_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"default_action" expected to be of type "list"';
    {
      default_action+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_load_balancer_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_arn" expected to be of type "string"';
    {
      load_balancer_arn: converted,
    }
  ),
  with_mutual_authentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"mutual_authentication" expected to be of type "list"';
    {
      mutual_authentication: converted,
    }
  ),
  with_mutual_authentication_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"mutual_authentication" expected to be of type "list"';
    {
      mutual_authentication+: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_ssl_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssl_policy" expected to be of type "string"';
    {
      ssl_policy: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
