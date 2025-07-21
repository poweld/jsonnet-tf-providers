{
  local block = self,
  new(access_role, base_directory, local_profile_id, partner_profile_id, server_id):: (
    {}
    + block.with_access_role(access_role)
    + block.with_base_directory(base_directory)
    + block.with_local_profile_id(local_profile_id)
    + block.with_partner_profile_id(partner_profile_id)
    + block.with_server_id(server_id)
  ),
  with_access_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_role" expected to be of type "string"';
    {
      access_role: converted,
    }
  ),
  with_agreement_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"agreement_id" expected to be of type "string"';
    {
      agreement_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_directory(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_directory" expected to be of type "string"';
    {
      base_directory: converted,
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
  with_local_profile_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_profile_id" expected to be of type "string"';
    {
      local_profile_id: converted,
    }
  ),
  with_partner_profile_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"partner_profile_id" expected to be of type "string"';
    {
      partner_profile_id: converted,
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
  with_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_id" expected to be of type "string"';
    {
      server_id: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
}
