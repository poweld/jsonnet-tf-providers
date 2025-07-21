{
  local block = self,
  new(instance_port, load_balancer_name):: (
    {}
    + block.with_instance_port(instance_port)
    + block.with_load_balancer_name(load_balancer_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_port" expected to be of type "number"';
    {
      instance_port: converted,
    }
  ),
  with_load_balancer_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_name" expected to be of type "string"';
    {
      load_balancer_name: converted,
    }
  ),
  with_policy_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_names" expected to be of type "set"';
    {
      policy_names: converted,
    }
  ),
  with_policy_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_names" expected to be of type "set"';
    {
      policy_names+: converted,
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
}
