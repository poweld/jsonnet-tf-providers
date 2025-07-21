{
  local block = self,
  new(slack_team_name):: (
    {}
    + block.with_slack_team_name(slack_team_name)
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_slack_team_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"slack_team_id" expected to be of type "string"';
    {
      slack_team_id: converted,
    }
  ),
  with_slack_team_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"slack_team_name" expected to be of type "string"';
    {
      slack_team_name: converted,
    }
  ),
}
