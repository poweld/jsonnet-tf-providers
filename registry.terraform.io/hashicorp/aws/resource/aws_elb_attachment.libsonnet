{
  local block = self,
  new(elb, instance):: (
    {}
    + block.with_elb(elb)
    + block.with_instance(instance)
  ),
  with_elb(value):: (
    local converted = value;
    assert std.isString(converted) : '"elb" expected to be of type "string"';
    {
      elb: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance" expected to be of type "string"';
    {
      instance: converted,
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
