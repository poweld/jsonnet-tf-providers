{
  local block = self,
  new():: (
    {}
  ),
  with_data_shares(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_shares" expected to be of type "list"';
    {
      data_shares: converted,
    }
  ),
  with_data_shares_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_shares" expected to be of type "list"';
    {
      data_shares+: converted,
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
}
