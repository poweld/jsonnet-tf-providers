{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_associate_public_ip_address(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"associate_public_ip_address" expected to be of type "bool"';
    {
      associate_public_ip_address: converted,
    }
  ),
  with_ebs_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ebs_block_device" expected to be of type "set"';
    {
      ebs_block_device: converted,
    }
  ),
  with_ebs_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ebs_block_device" expected to be of type "set"';
    {
      ebs_block_device+: converted,
    }
  ),
  with_ebs_optimized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  with_enable_monitoring(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_monitoring" expected to be of type "bool"';
    {
      enable_monitoring: converted,
    }
  ),
  with_ephemeral_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ephemeral_block_device" expected to be of type "set"';
    {
      ephemeral_block_device: converted,
    }
  ),
  with_ephemeral_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ephemeral_block_device" expected to be of type "set"';
    {
      ephemeral_block_device+: converted,
    }
  ),
  with_iam_instance_profile(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_instance_profile" expected to be of type "string"';
    {
      iam_instance_profile: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_key_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  with_metadata_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metadata_options" expected to be of type "list"';
    {
      metadata_options: converted,
    }
  ),
  with_metadata_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metadata_options" expected to be of type "list"';
    {
      metadata_options+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_placement_tenancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_tenancy" expected to be of type "string"';
    {
      placement_tenancy: converted,
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
  with_root_block_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"root_block_device" expected to be of type "list"';
    {
      root_block_device: converted,
    }
  ),
  with_root_block_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"root_block_device" expected to be of type "list"';
    {
      root_block_device+: converted,
    }
  ),
  with_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  with_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  with_spot_price(value):: (
    local converted = value;
    assert std.isString(converted) : '"spot_price" expected to be of type "string"';
    {
      spot_price: converted,
    }
  ),
  with_user_data(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data" expected to be of type "string"';
    {
      user_data: converted,
    }
  ),
}
