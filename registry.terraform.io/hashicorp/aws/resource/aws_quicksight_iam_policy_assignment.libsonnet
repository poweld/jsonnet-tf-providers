{
  local block = self,
  new(assignment_name, assignment_status):: (
    {}
    + block.with_assignment_name(assignment_name)
    + block.with_assignment_status(assignment_status)
  ),
  with_assignment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"assignment_id" expected to be of type "string"';
    {
      assignment_id: converted,
    }
  ),
  with_assignment_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"assignment_name" expected to be of type "string"';
    {
      assignment_name: converted,
    }
  ),
  with_assignment_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"assignment_status" expected to be of type "string"';
    {
      assignment_status: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
    }
  ),
  with_policy_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_arn" expected to be of type "string"';
    {
      policy_arn: converted,
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
  identities:: {
    local block = self,
    new():: (
      {}
    ),
    with_group(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group" expected to be of type "set"';
      {
        group: converted,
      }
    ),
    with_group_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group" expected to be of type "set"';
      {
        group+: converted,
      }
    ),
    with_user(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user" expected to be of type "set"';
      {
        user: converted,
      }
    ),
    with_user_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user" expected to be of type "set"';
      {
        user+: converted,
      }
    ),
  },
  with_identities(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      identities: value,
    }
  ),
  with_identities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      identities+: converted,
    }
  ),
}
