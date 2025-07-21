{
  local block = self,
  new(pool_name):: (
    {}
    + block.with_pool_name(pool_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_dedicated_ips(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dedicated_ips" expected to be of type "list"';
    {
      dedicated_ips: converted,
    }
  ),
  with_dedicated_ips_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dedicated_ips" expected to be of type "list"';
    {
      dedicated_ips+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_pool_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"pool_name" expected to be of type "string"';
    {
      pool_name: converted,
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
  with_scaling_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"scaling_mode" expected to be of type "string"';
    {
      scaling_mode: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
