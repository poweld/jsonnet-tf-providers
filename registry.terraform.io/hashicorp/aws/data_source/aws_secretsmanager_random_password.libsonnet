{
  local block = self,
  new():: (
    {}
  ),
  with_exclude_characters(value):: (
    local converted = value;
    assert std.isString(converted) : '"exclude_characters" expected to be of type "string"';
    {
      exclude_characters: converted,
    }
  ),
  with_exclude_lowercase(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_lowercase" expected to be of type "bool"';
    {
      exclude_lowercase: converted,
    }
  ),
  with_exclude_numbers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_numbers" expected to be of type "bool"';
    {
      exclude_numbers: converted,
    }
  ),
  with_exclude_punctuation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_punctuation" expected to be of type "bool"';
    {
      exclude_punctuation: converted,
    }
  ),
  with_exclude_uppercase(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_uppercase" expected to be of type "bool"';
    {
      exclude_uppercase: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_include_space(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_space" expected to be of type "bool"';
    {
      include_space: converted,
    }
  ),
  with_password_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_length" expected to be of type "number"';
    {
      password_length: converted,
    }
  ),
  with_random_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"random_password" expected to be of type "string"';
    {
      random_password: converted,
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
  with_require_each_included_type(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_each_included_type" expected to be of type "bool"';
    {
      require_each_included_type: converted,
    }
  ),
}
