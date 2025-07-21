{
  local block = self,
  new(description, hsm_configuration_identifier, hsm_ip_address, hsm_partition_name, hsm_partition_password, hsm_server_public_certificate):: (
    {}
    + block.with_description(description)
    + block.with_hsm_configuration_identifier(hsm_configuration_identifier)
    + block.with_hsm_ip_address(hsm_ip_address)
    + block.with_hsm_partition_name(hsm_partition_name)
    + block.with_hsm_partition_password(hsm_partition_password)
    + block.with_hsm_server_public_certificate(hsm_server_public_certificate)
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
  with_hsm_configuration_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_configuration_identifier" expected to be of type "string"';
    {
      hsm_configuration_identifier: converted,
    }
  ),
  with_hsm_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_ip_address" expected to be of type "string"';
    {
      hsm_ip_address: converted,
    }
  ),
  with_hsm_partition_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_partition_name" expected to be of type "string"';
    {
      hsm_partition_name: converted,
    }
  ),
  with_hsm_partition_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_partition_password" expected to be of type "string"';
    {
      hsm_partition_password: converted,
    }
  ),
  with_hsm_server_public_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_server_public_certificate" expected to be of type "string"';
    {
      hsm_server_public_certificate: converted,
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
