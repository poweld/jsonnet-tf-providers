{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_approval_rule_template_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"approval_rule_template_id" expected to be of type "string"';
    {
      approval_rule_template_id: converted,
    }
  ),
  with_content(value):: (
    local converted = value;
    assert std.isString(converted) : '"content" expected to be of type "string"';
    {
      content: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
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
  with_last_modified_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_date" expected to be of type "string"';
    {
      last_modified_date: converted,
    }
  ),
  with_last_modified_user(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_user" expected to be of type "string"';
    {
      last_modified_user: converted,
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
  with_rule_content_sha256(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_content_sha256" expected to be of type "string"';
    {
      rule_content_sha256: converted,
    }
  ),
}
