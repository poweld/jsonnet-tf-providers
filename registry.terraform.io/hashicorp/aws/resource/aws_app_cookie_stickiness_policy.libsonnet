{
  local block = self,
  new(cookie_name, lb_port, load_balancer, name):: (
    {}
    + block.with_cookie_name(cookie_name)
    + block.with_lb_port(lb_port)
    + block.with_load_balancer(load_balancer)
    + block.with_name(name)
  ),
  with_cookie_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cookie_name" expected to be of type "string"';
    {
      cookie_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_lb_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"lb_port" expected to be of type "number"';
    {
      lb_port: converted,
    }
  ),
  with_load_balancer(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer" expected to be of type "string"';
    {
      load_balancer: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
