{
  local block = self,
  new(iam_role):: (
    {}
    + block.with_iam_role(iam_role)
  ),
  with_activation_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"activation_code" expected to be of type "string"';
    {
      activation_code: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_expiration_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"expiration_date" expected to be of type "string"';
    {
      expiration_date: converted,
    }
  ),
  with_expired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"expired" expected to be of type "bool"';
    {
      expired: converted,
    }
  ),
  with_iam_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role" expected to be of type "string"';
    {
      iam_role: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_registration_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"registration_count" expected to be of type "number"';
    {
      registration_count: converted,
    }
  ),
  with_registration_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"registration_limit" expected to be of type "number"';
    {
      registration_limit: converted,
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
