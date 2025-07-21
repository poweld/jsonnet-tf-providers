{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_type" expected to be of type "string"';
    {
      certificate_type: converted,
    }
  ),
  with_customer_override(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"customer_override" expected to be of type "bool"';
    {
      customer_override: converted,
    }
  ),
  with_customer_override_valid_till(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_override_valid_till" expected to be of type "string"';
    {
      customer_override_valid_till: converted,
    }
  ),
  with_default_for_new_launches(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_for_new_launches" expected to be of type "bool"';
    {
      default_for_new_launches: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_latest_valid_till(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"latest_valid_till" expected to be of type "bool"';
    {
      latest_valid_till: converted,
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
  with_thumbprint(value):: (
    local converted = value;
    assert std.isString(converted) : '"thumbprint" expected to be of type "string"';
    {
      thumbprint: converted,
    }
  ),
  with_valid_from(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_from" expected to be of type "string"';
    {
      valid_from: converted,
    }
  ),
  with_valid_till(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_till" expected to be of type "string"';
    {
      valid_till: converted,
    }
  ),
}
