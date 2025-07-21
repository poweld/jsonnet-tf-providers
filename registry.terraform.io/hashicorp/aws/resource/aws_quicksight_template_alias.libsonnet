{
  local block = self,
  new(alias_name, template_id, template_version_number):: (
    {}
    + block.with_alias_name(alias_name)
    + block.with_template_id(template_id)
    + block.with_template_version_number(template_version_number)
  ),
  with_alias_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias_name" expected to be of type "string"';
    {
      alias_name: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_template_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_id" expected to be of type "string"';
    {
      template_id: converted,
    }
  ),
  with_template_version_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"template_version_number" expected to be of type "number"';
    {
      template_version_number: converted,
    }
  ),
}
