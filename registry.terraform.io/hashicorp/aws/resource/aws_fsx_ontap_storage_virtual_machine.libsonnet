{
  local block = self,
  new(file_system_id, name):: (
    {}
    + block.with_file_system_id(file_system_id)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_endpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoints" expected to be of type "list"';
    {
      endpoints: converted,
    }
  ),
  with_endpoints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoints" expected to be of type "list"';
    {
      endpoints+: converted,
    }
  ),
  with_file_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
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
  with_root_volume_security_style(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_volume_security_style" expected to be of type "string"';
    {
      root_volume_security_style: converted,
    }
  ),
  with_subtype(value):: (
    local converted = value;
    assert std.isString(converted) : '"subtype" expected to be of type "string"';
    {
      subtype: converted,
    }
  ),
  with_svm_admin_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"svm_admin_password" expected to be of type "string"';
    {
      svm_admin_password: converted,
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
  with_uuid(value):: (
    local converted = value;
    assert std.isString(converted) : '"uuid" expected to be of type "string"';
    {
      uuid: converted,
    }
  ),
  active_directory_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_netbios_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"netbios_name" expected to be of type "string"';
      {
        netbios_name: converted,
      }
    ),
    self_managed_active_directory_configuration:: {
      local block = self,
      new(dns_ips, domain_name, password, username):: (
        {}
        + block.with_dns_ips(dns_ips)
        + block.with_domain_name(domain_name)
        + block.with_password(password)
        + block.with_username(username)
      ),
      with_dns_ips(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
        {
          dns_ips: converted,
        }
      ),
      with_dns_ips_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
        {
          dns_ips+: converted,
        }
      ),
      with_domain_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain_name" expected to be of type "string"';
        {
          domain_name: converted,
        }
      ),
      with_file_system_administrators_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_administrators_group" expected to be of type "string"';
        {
          file_system_administrators_group: converted,
        }
      ),
      with_organizational_unit_distinguished_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"organizational_unit_distinguished_name" expected to be of type "string"';
        {
          organizational_unit_distinguished_name: converted,
        }
      ),
      with_password(value):: (
        local converted = value;
        assert std.isString(converted) : '"password" expected to be of type "string"';
        {
          password: converted,
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
    with_self_managed_active_directory_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        self_managed_active_directory_configuration: value,
      }
    ),
    with_self_managed_active_directory_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        self_managed_active_directory_configuration+: converted,
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
  with_active_directory_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      active_directory_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_active_directory_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      active_directory_configuration+: converted,
    }
  ),
}
