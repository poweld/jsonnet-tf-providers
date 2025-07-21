{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_database(value):: (
    local converted = value;
    assert std.isString(converted) : '"database" expected to be of type "string"';
    {
      database: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_querystring(value):: (
    local converted = value;
    assert std.isString(converted) : '"querystring" expected to be of type "string"';
    {
      querystring: converted,
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
  with_workgroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup" expected to be of type "string"';
    {
      workgroup: converted,
    }
  ),
}
