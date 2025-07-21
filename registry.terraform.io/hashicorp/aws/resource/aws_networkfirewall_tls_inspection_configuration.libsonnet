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
  with_certificate_authority(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificate_authority" expected to be of type "list"';
    {
      certificate_authority: converted,
    }
  ),
  with_certificate_authority_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificate_authority" expected to be of type "list"';
    {
      certificate_authority+: converted,
    }
  ),
  with_certificates(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificates" expected to be of type "list"';
    {
      certificates: converted,
    }
  ),
  with_certificates_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificates" expected to be of type "list"';
    {
      certificates+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
    {
      encryption_configuration: converted,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
    {
      encryption_configuration+: converted,
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
  with_number_of_associations(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_associations" expected to be of type "number"';
    {
      number_of_associations: converted,
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
  with_tls_inspection_configuration_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"tls_inspection_configuration_id" expected to be of type "string"';
    {
      tls_inspection_configuration_id: converted,
    }
  ),
  with_update_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_token" expected to be of type "string"';
    {
      update_token: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  tls_inspection_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    server_certificate_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_certificate_authority_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
        {
          certificate_authority_arn: converted,
        }
      ),
      check_certificate_revocation_status:: {
        local block = self,
        new():: (
          {}
        ),
        with_revoked_status_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"revoked_status_action" expected to be of type "string"';
          {
            revoked_status_action: converted,
          }
        ),
        with_unknown_status_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"unknown_status_action" expected to be of type "string"';
          {
            unknown_status_action: converted,
          }
        ),
      },
      scope:: {
        local block = self,
        new(protocols):: (
          {}
          + block.with_protocols(protocols)
        ),
        with_protocols(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
          {
            protocols: converted,
          }
        ),
        with_protocols_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
          {
            protocols+: converted,
          }
        ),
        destination:: {
          local block = self,
          new(address_definition):: (
            {}
            + block.with_address_definition(address_definition)
          ),
          with_address_definition(value):: (
            local converted = value;
            assert std.isString(converted) : '"address_definition" expected to be of type "string"';
            {
              address_definition: converted,
            }
          ),
        },
        destination_ports:: {
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
        source:: {
          local block = self,
          new(address_definition):: (
            {}
            + block.with_address_definition(address_definition)
          ),
          with_address_definition(value):: (
            local converted = value;
            assert std.isString(converted) : '"address_definition" expected to be of type "string"';
            {
              address_definition: converted,
            }
          ),
        },
        source_ports:: {
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
        with_destination(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination: value,
          }
        ),
        with_destination_ports(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination_ports: value,
          }
        ),
        with_source(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            source: value,
          }
        ),
        with_source_ports(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            source_ports: value,
          }
        ),
        with_destination_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination+: converted,
          }
        ),
        with_destination_ports_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination_ports+: converted,
          }
        ),
        with_source_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            source+: converted,
          }
        ),
        with_source_ports_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            source_ports+: converted,
          }
        ),
      },
      server_certificate:: {
        local block = self,
        new():: (
          {}
        ),
        with_resource_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
          {
            resource_arn: converted,
          }
        ),
      },
      with_check_certificate_revocation_status(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          check_certificate_revocation_status: value,
        }
      ),
      with_scope(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scope: value,
        }
      ),
      with_server_certificate(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          server_certificate: value,
        }
      ),
      with_check_certificate_revocation_status_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          check_certificate_revocation_status+: converted,
        }
      ),
      with_scope_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scope+: converted,
        }
      ),
      with_server_certificate_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          server_certificate+: converted,
        }
      ),
    },
    with_server_certificate_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        server_certificate_configuration: value,
      }
    ),
    with_server_certificate_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        server_certificate_configuration+: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_tls_inspection_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_inspection_configuration: value,
    }
  ),
  with_tls_inspection_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_inspection_configuration+: converted,
    }
  ),
}
