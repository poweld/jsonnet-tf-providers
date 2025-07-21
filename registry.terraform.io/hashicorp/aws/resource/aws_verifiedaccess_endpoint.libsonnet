{
  local block = self,
  new(attachment_type, endpoint_type, verified_access_group_id):: (
    {}
    + block.with_attachment_type(attachment_type)
    + block.with_endpoint_type(endpoint_type)
    + block.with_verified_access_group_id(verified_access_group_id)
  ),
  with_application_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_domain" expected to be of type "string"';
    {
      application_domain: converted,
    }
  ),
  with_attachment_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"attachment_type" expected to be of type "string"';
    {
      attachment_type: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_device_validation_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_validation_domain" expected to be of type "string"';
    {
      device_validation_domain: converted,
    }
  ),
  with_domain_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_certificate_arn" expected to be of type "string"';
    {
      domain_certificate_arn: converted,
    }
  ),
  with_endpoint_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_domain" expected to be of type "string"';
    {
      endpoint_domain: converted,
    }
  ),
  with_endpoint_domain_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_domain_prefix" expected to be of type "string"';
    {
      endpoint_domain_prefix: converted,
    }
  ),
  with_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy_document(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_document" expected to be of type "string"';
    {
      policy_document: converted,
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
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
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
  with_verified_access_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"verified_access_group_id" expected to be of type "string"';
    {
      verified_access_group_id: converted,
    }
  ),
  with_verified_access_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"verified_access_instance_id" expected to be of type "string"';
    {
      verified_access_instance_id: converted,
    }
  ),
  cidr_options:: {
    local block = self,
    new(cidr):: (
      {}
      + block.with_cidr(cidr)
    ),
    with_cidr(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr" expected to be of type "string"';
      {
        cidr: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
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
    port_range:: {
      local block = self,
      new(from_port, to_port):: (
        {}
        + block.with_from_port(from_port)
        + block.with_to_port(to_port)
      ),
      with_from_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      with_to_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    with_port_range(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range: value,
      }
    ),
    with_port_range_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range+: converted,
      }
    ),
  },
  load_balancer_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_load_balancer_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"load_balancer_arn" expected to be of type "string"';
      {
        load_balancer_arn: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
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
    port_range:: {
      local block = self,
      new(from_port, to_port):: (
        {}
        + block.with_from_port(from_port)
        + block.with_to_port(to_port)
      ),
      with_from_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      with_to_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    with_port_range(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range: value,
      }
    ),
    with_port_range_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range+: converted,
      }
    ),
  },
  network_interface_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_network_interface_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
      {
        network_interface_id: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    port_range:: {
      local block = self,
      new(from_port, to_port):: (
        {}
        + block.with_from_port(from_port)
        + block.with_to_port(to_port)
      ),
      with_from_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      with_to_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    with_port_range(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range: value,
      }
    ),
    with_port_range_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range+: converted,
      }
    ),
  },
  rds_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_rds_db_cluster_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds_db_cluster_arn" expected to be of type "string"';
      {
        rds_db_cluster_arn: converted,
      }
    ),
    with_rds_db_instance_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds_db_instance_arn" expected to be of type "string"';
      {
        rds_db_instance_arn: converted,
      }
    ),
    with_rds_db_proxy_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds_db_proxy_arn" expected to be of type "string"';
      {
        rds_db_proxy_arn: converted,
      }
    ),
    with_rds_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds_endpoint" expected to be of type "string"';
      {
        rds_endpoint: converted,
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
  },
  sse_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_customer_managed_key_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"customer_managed_key_enabled" expected to be of type "bool"';
      {
        customer_managed_key_enabled: converted,
      }
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
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
  with_cidr_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_options: value,
    }
  ),
  with_load_balancer_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer_options: value,
    }
  ),
  with_network_interface_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interface_options: value,
    }
  ),
  with_rds_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rds_options: value,
    }
  ),
  with_sse_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_specification: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_cidr_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_options+: converted,
    }
  ),
  with_load_balancer_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer_options+: converted,
    }
  ),
  with_network_interface_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interface_options+: converted,
    }
  ),
  with_rds_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rds_options+: converted,
    }
  ),
  with_sse_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_specification+: converted,
    }
  ),
}
