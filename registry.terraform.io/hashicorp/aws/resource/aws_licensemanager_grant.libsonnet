{
  local block = self,
  new(allowed_operations, license_arn, name, principal):: (
    {}
    + block.with_allowed_operations(allowed_operations)
    + block.with_license_arn(license_arn)
    + block.with_name(name)
    + block.with_principal(principal)
  ),
  '#with_allowed_operations':: 'Allowed operations for the grant. This is a subset of the allowed operations on the license.',
  with_allowed_operations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_operations" expected to be of type "set"';
    {
      allowed_operations: converted,
    }
  ),
  '#with_allowed_operations_mixin':: 'Allowed operations for the grant. This is a subset of the allowed operations on the license.',
  with_allowed_operations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_operations" expected to be of type "set"';
    {
      allowed_operations+: converted,
    }
  ),
  '#with_arn':: 'Amazon Resource Name (ARN) of the grant.',
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  '#with_home_region':: 'Home Region of the grant.',
  with_home_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_region" expected to be of type "string"';
    {
      home_region: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_license_arn':: 'License ARN.',
  with_license_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_arn" expected to be of type "string"';
    {
      license_arn: converted,
    }
  ),
  '#with_name':: 'Name of the grant.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_parent_arn':: 'Parent ARN.',
  with_parent_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_arn" expected to be of type "string"';
    {
      parent_arn: converted,
    }
  ),
  '#with_principal':: 'The grantee principal ARN. The target account for the grant in the form of the ARN for an account principal of the root user.',
  with_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
  '#with_status':: 'Grant status.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_version':: 'Grant version.',
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
}
