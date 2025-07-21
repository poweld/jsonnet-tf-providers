{
  local block = self,
  new(license_counting_type, name):: (
    {}
    + block.with_license_counting_type(license_counting_type)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_license_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"license_count" expected to be of type "number"';
    {
      license_count: converted,
    }
  ),
  with_license_count_hard_limit(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"license_count_hard_limit" expected to be of type "bool"';
    {
      license_count_hard_limit: converted,
    }
  ),
  with_license_counting_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_counting_type" expected to be of type "string"';
    {
      license_counting_type: converted,
    }
  ),
  with_license_rules(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"license_rules" expected to be of type "list"';
    {
      license_rules: converted,
    }
  ),
  with_license_rules_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"license_rules" expected to be of type "list"';
    {
      license_rules+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
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
