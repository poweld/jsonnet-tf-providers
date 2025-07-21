{
  local block = self,
  new(gateway_name, gateway_timezone):: (
    {}
    + block.with_gateway_name(gateway_name)
    + block.with_gateway_timezone(gateway_timezone)
  ),
  with_activation_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"activation_key" expected to be of type "string"';
    {
      activation_key: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_average_download_rate_limit_in_bits_per_sec(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"average_download_rate_limit_in_bits_per_sec" expected to be of type "number"';
    {
      average_download_rate_limit_in_bits_per_sec: converted,
    }
  ),
  with_average_upload_rate_limit_in_bits_per_sec(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"average_upload_rate_limit_in_bits_per_sec" expected to be of type "number"';
    {
      average_upload_rate_limit_in_bits_per_sec: converted,
    }
  ),
  with_cloudwatch_log_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_log_group_arn" expected to be of type "string"';
    {
      cloudwatch_log_group_arn: converted,
    }
  ),
  with_ec2_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ec2_instance_id" expected to be of type "string"';
    {
      ec2_instance_id: converted,
    }
  ),
  with_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  with_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_id" expected to be of type "string"';
    {
      gateway_id: converted,
    }
  ),
  with_gateway_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_ip_address" expected to be of type "string"';
    {
      gateway_ip_address: converted,
    }
  ),
  with_gateway_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_name" expected to be of type "string"';
    {
      gateway_name: converted,
    }
  ),
  with_gateway_network_interface(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"gateway_network_interface" expected to be of type "list"';
    {
      gateway_network_interface: converted,
    }
  ),
  with_gateway_network_interface_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"gateway_network_interface" expected to be of type "list"';
    {
      gateway_network_interface+: converted,
    }
  ),
  with_gateway_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_timezone" expected to be of type "string"';
    {
      gateway_timezone: converted,
    }
  ),
  with_gateway_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_type" expected to be of type "string"';
    {
      gateway_type: converted,
    }
  ),
  with_gateway_vpc_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_vpc_endpoint" expected to be of type "string"';
    {
      gateway_vpc_endpoint: converted,
    }
  ),
  with_host_environment(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_environment" expected to be of type "string"';
    {
      host_environment: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_medium_changer_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"medium_changer_type" expected to be of type "string"';
    {
      medium_changer_type: converted,
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
  with_smb_file_share_visibility(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"smb_file_share_visibility" expected to be of type "bool"';
    {
      smb_file_share_visibility: converted,
    }
  ),
  with_smb_guest_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"smb_guest_password" expected to be of type "string"';
    {
      smb_guest_password: converted,
    }
  ),
  with_smb_security_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"smb_security_strategy" expected to be of type "string"';
    {
      smb_security_strategy: converted,
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
  with_tape_drive_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"tape_drive_type" expected to be of type "string"';
    {
      tape_drive_type: converted,
    }
  ),
  maintenance_start_time:: {
    local block = self,
    new(hour_of_day):: (
      {}
      + block.with_hour_of_day(hour_of_day)
    ),
    with_day_of_month(value):: (
      local converted = value;
      assert std.isString(converted) : '"day_of_month" expected to be of type "string"';
      {
        day_of_month: converted,
      }
    ),
    with_day_of_week(value):: (
      local converted = value;
      assert std.isString(converted) : '"day_of_week" expected to be of type "string"';
      {
        day_of_week: converted,
      }
    ),
    with_hour_of_day(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
      {
        hour_of_day: converted,
      }
    ),
    with_minute_of_hour(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
      {
        minute_of_hour: converted,
      }
    ),
  },
  smb_active_directory_settings:: {
    local block = self,
    new(domain_name, password, username):: (
      {}
      + block.with_domain_name(domain_name)
      + block.with_password(password)
      + block.with_username(username)
    ),
    with_active_directory_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"active_directory_status" expected to be of type "string"';
      {
        active_directory_status: converted,
      }
    ),
    with_domain_controllers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"domain_controllers" expected to be of type "set"';
      {
        domain_controllers: converted,
      }
    ),
    with_domain_controllers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"domain_controllers" expected to be of type "set"';
      {
        domain_controllers+: converted,
      }
    ),
    with_domain_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    with_organizational_unit(value):: (
      local converted = value;
      assert std.isString(converted) : '"organizational_unit" expected to be of type "string"';
      {
        organizational_unit: converted,
      }
    ),
    with_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    with_timeout_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
      {
        timeout_in_seconds: converted,
      }
    ),
    with_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  with_maintenance_start_time(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_start_time: value,
    }
  ),
  with_smb_active_directory_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      smb_active_directory_settings: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_maintenance_start_time_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_start_time+: converted,
    }
  ),
  with_smb_active_directory_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      smb_active_directory_settings+: converted,
    }
  ),
}
