{
  local block = self,
  new(workgroup_name):: (
    {}
    + block.with_workgroup_name(workgroup_name)
  ),
  with_db_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_name" expected to be of type "string"';
    {
      db_name: converted,
    }
  ),
  with_db_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_password" expected to be of type "string"';
    {
      db_password: converted,
    }
  ),
  with_db_user(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_user" expected to be of type "string"';
    {
      db_user: converted,
    }
  ),
  with_duration_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration_seconds" expected to be of type "number"';
    {
      duration_seconds: converted,
    }
  ),
  with_expiration(value):: (
    local converted = value;
    assert std.isString(converted) : '"expiration" expected to be of type "string"';
    {
      expiration: converted,
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
  with_workgroup_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_name" expected to be of type "string"';
    {
      workgroup_name: converted,
    }
  ),
}
