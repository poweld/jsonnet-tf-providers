{
  local block = self,
  new(name, password):: (
    {}
    + block.with_name(name)
    + block.with_password(password)
  ),
  with_access_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_url" expected to be of type "string"';
    {
      access_url: converted,
    }
  ),
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_desired_number_of_domain_controllers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_number_of_domain_controllers" expected to be of type "number"';
    {
      desired_number_of_domain_controllers: converted,
    }
  ),
  with_dns_ip_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ip_addresses" expected to be of type "set"';
    {
      dns_ip_addresses: converted,
    }
  ),
  with_dns_ip_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ip_addresses" expected to be of type "set"';
    {
      dns_ip_addresses+: converted,
    }
  ),
  with_edition(value):: (
    local converted = value;
    assert std.isString(converted) : '"edition" expected to be of type "string"';
    {
      edition: converted,
    }
  ),
  with_enable_sso(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_sso" expected to be of type "bool"';
    {
      enable_sso: converted,
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
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
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
  with_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_id" expected to be of type "string"';
    {
      security_group_id: converted,
    }
  ),
  with_short_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"short_name" expected to be of type "string"';
    {
      short_name: converted,
    }
  ),
  with_size(value):: (
    local converted = value;
    assert std.isString(converted) : '"size" expected to be of type "string"';
    {
      size: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  connect_settings:: {
    local block = self,
    new(customer_dns_ips, customer_username, subnet_ids, vpc_id):: (
      {}
      + block.with_customer_dns_ips(customer_dns_ips)
      + block.with_customer_username(customer_username)
      + block.with_subnet_ids(subnet_ids)
      + block.with_vpc_id(vpc_id)
    ),
    with_availability_zones(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
      {
        availability_zones: converted,
      }
    ),
    with_availability_zones_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
      {
        availability_zones+: converted,
      }
    ),
    with_connect_ips(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"connect_ips" expected to be of type "set"';
      {
        connect_ips: converted,
      }
    ),
    with_connect_ips_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"connect_ips" expected to be of type "set"';
      {
        connect_ips+: converted,
      }
    ),
    with_customer_dns_ips(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"customer_dns_ips" expected to be of type "set"';
      {
        customer_dns_ips: converted,
      }
    ),
    with_customer_dns_ips_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"customer_dns_ips" expected to be of type "set"';
      {
        customer_dns_ips+: converted,
      }
    ),
    with_customer_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"customer_username" expected to be of type "string"';
      {
        customer_username: converted,
      }
    ),
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc_settings:: {
    local block = self,
    new(subnet_ids, vpc_id):: (
      {}
      + block.with_subnet_ids(subnet_ids)
      + block.with_vpc_id(vpc_id)
    ),
    with_availability_zones(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
      {
        availability_zones: converted,
      }
    ),
    with_availability_zones_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
      {
        availability_zones+: converted,
      }
    ),
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  with_connect_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connect_settings: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_settings: value,
    }
  ),
  with_connect_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connect_settings+: converted,
    }
  ),
  with_vpc_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_settings+: converted,
    }
  ),
}
