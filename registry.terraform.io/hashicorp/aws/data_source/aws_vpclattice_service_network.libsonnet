{
  local block = self,
  new(service_network_identifier):: (
    {}
    + block.with_service_network_identifier(service_network_identifier)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auth_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_type" expected to be of type "string"';
    {
      auth_type: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_at" expected to be of type "string"';
    {
      last_updated_at: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_number_of_associated_services(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_associated_services" expected to be of type "number"';
    {
      number_of_associated_services: converted,
    }
  ),
  with_number_of_associated_vpcs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_associated_vpcs" expected to be of type "number"';
    {
      number_of_associated_vpcs: converted,
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
  with_service_network_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_network_identifier" expected to be of type "string"';
    {
      service_network_identifier: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
