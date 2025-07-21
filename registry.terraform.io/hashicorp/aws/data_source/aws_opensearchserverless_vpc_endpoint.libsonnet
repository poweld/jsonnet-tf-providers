{
  local block = self,
  new(vpc_endpoint_id):: (
    {}
    + block.with_vpc_endpoint_id(vpc_endpoint_id)
  ),
  '#with_created_date':: 'The date the endpoint was created.',
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'The name of the endpoint.',
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
  '#with_security_group_ids':: 'The IDs of the security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.',
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
    {
      security_group_ids: converted,
    }
  ),
  '#with_security_group_ids_mixin':: 'The IDs of the security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.',
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
    {
      security_group_ids+: converted,
    }
  ),
  '#with_subnet_ids':: 'The IDs of the subnets from which you access OpenSearch Serverless.',
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids: converted,
    }
  ),
  '#with_subnet_ids_mixin':: 'The IDs of the subnets from which you access OpenSearch Serverless.',
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids+: converted,
    }
  ),
  '#with_vpc_endpoint_id':: 'The unique identifier of the endpoint.',
  with_vpc_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
    {
      vpc_endpoint_id: converted,
    }
  ),
  '#with_vpc_id':: 'The ID of the VPC from which you access OpenSearch Serverless.',
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
}
