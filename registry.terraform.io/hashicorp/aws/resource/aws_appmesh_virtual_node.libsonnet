{
  local block = self,
  new(mesh_name, name):: (
    {}
    + block.with_mesh_name(mesh_name)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
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
  with_last_updated_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date" expected to be of type "string"';
    {
      last_updated_date: converted,
    }
  ),
  with_mesh_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_name" expected to be of type "string"';
    {
      mesh_name: converted,
    }
  ),
  with_mesh_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_owner" expected to be of type "string"';
    {
      mesh_owner: converted,
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
  with_resource_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_owner" expected to be of type "string"';
    {
      resource_owner: converted,
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
  spec:: {
    local block = self,
    new():: (
      {}
    ),
    backend:: {
      local block = self,
      new():: (
        {}
      ),
      virtual_service:: {
        local block = self,
        new(virtual_service_name):: (
          {}
          + block.with_virtual_service_name(virtual_service_name)
        ),
        with_virtual_service_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"virtual_service_name" expected to be of type "string"';
          {
            virtual_service_name: converted,
          }
        ),
        client_policy:: {
          local block = self,
          new():: (
            {}
          ),
          tls:: {
            local block = self,
            new():: (
              {}
            ),
            with_enforce(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"enforce" expected to be of type "bool"';
              {
                enforce: converted,
              }
            ),
            with_ports(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ports" expected to be of type "set"';
              {
                ports: converted,
              }
            ),
            with_ports_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ports" expected to be of type "set"';
              {
                ports+: converted,
              }
            ),
            certificate:: {
              local block = self,
              new():: (
                {}
              ),
              file:: {
                local block = self,
                new(certificate_chain, private_key):: (
                  {}
                  + block.with_certificate_chain(certificate_chain)
                  + block.with_private_key(private_key)
                ),
                with_certificate_chain(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                  {
                    certificate_chain: converted,
                  }
                ),
                with_private_key(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"private_key" expected to be of type "string"';
                  {
                    private_key: converted,
                  }
                ),
              },
              sds:: {
                local block = self,
                new(secret_name):: (
                  {}
                  + block.with_secret_name(secret_name)
                ),
                with_secret_name(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                  {
                    secret_name: converted,
                  }
                ),
              },
              with_file(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  file: value,
                }
              ),
              with_sds(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  sds: value,
                }
              ),
              with_file_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  file+: converted,
                }
              ),
              with_sds_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  sds+: converted,
                }
              ),
            },
            validation:: {
              local block = self,
              new():: (
                {}
              ),
              subject_alternative_names:: {
                local block = self,
                new():: (
                  {}
                ),
                match:: {
                  local block = self,
                  new(exact):: (
                    {}
                    + block.with_exact(exact)
                  ),
                  with_exact(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                    {
                      exact: converted,
                    }
                  ),
                  with_exact_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                    {
                      exact+: converted,
                    }
                  ),
                },
                with_match(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    match: value,
                  }
                ),
                with_match_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    match+: converted,
                  }
                ),
              },
              trust:: {
                local block = self,
                new():: (
                  {}
                ),
                acm:: {
                  local block = self,
                  new(certificate_authority_arns):: (
                    {}
                    + block.with_certificate_authority_arns(certificate_authority_arns)
                  ),
                  with_certificate_authority_arns(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
                    {
                      certificate_authority_arns: converted,
                    }
                  ),
                  with_certificate_authority_arns_mixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
                    {
                      certificate_authority_arns+: converted,
                    }
                  ),
                },
                file:: {
                  local block = self,
                  new(certificate_chain):: (
                    {}
                    + block.with_certificate_chain(certificate_chain)
                  ),
                  with_certificate_chain(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                    {
                      certificate_chain: converted,
                    }
                  ),
                },
                sds:: {
                  local block = self,
                  new(secret_name):: (
                    {}
                    + block.with_secret_name(secret_name)
                  ),
                  with_secret_name(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                    {
                      secret_name: converted,
                    }
                  ),
                },
                with_acm(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    acm: value,
                  }
                ),
                with_file(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    file: value,
                  }
                ),
                with_sds(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    sds: value,
                  }
                ),
                with_acm_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    acm+: converted,
                  }
                ),
                with_file_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    file+: converted,
                  }
                ),
                with_sds_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    sds+: converted,
                  }
                ),
              },
              with_subject_alternative_names(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  subject_alternative_names: value,
                }
              ),
              with_trust(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  trust: value,
                }
              ),
              with_subject_alternative_names_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  subject_alternative_names+: converted,
                }
              ),
              with_trust_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  trust+: converted,
                }
              ),
            },
            with_certificate(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                certificate: value,
              }
            ),
            with_validation(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                validation: value,
              }
            ),
            with_certificate_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                certificate+: converted,
              }
            ),
            with_validation_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                validation+: converted,
              }
            ),
          },
          with_tls(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tls: value,
            }
          ),
          with_tls_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tls+: converted,
            }
          ),
        },
        with_client_policy(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            client_policy: value,
          }
        ),
        with_client_policy_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            client_policy+: converted,
          }
        ),
      },
      with_virtual_service(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_service: value,
        }
      ),
      with_virtual_service_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_service+: converted,
        }
      ),
    },
    backend_defaults:: {
      local block = self,
      new():: (
        {}
      ),
      client_policy:: {
        local block = self,
        new():: (
          {}
        ),
        tls:: {
          local block = self,
          new():: (
            {}
          ),
          with_enforce(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"enforce" expected to be of type "bool"';
            {
              enforce: converted,
            }
          ),
          with_ports(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ports" expected to be of type "set"';
            {
              ports: converted,
            }
          ),
          with_ports_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ports" expected to be of type "set"';
            {
              ports+: converted,
            }
          ),
          certificate:: {
            local block = self,
            new():: (
              {}
            ),
            file:: {
              local block = self,
              new(certificate_chain, private_key):: (
                {}
                + block.with_certificate_chain(certificate_chain)
                + block.with_private_key(private_key)
              ),
              with_certificate_chain(value):: (
                local converted = value;
                assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                {
                  certificate_chain: converted,
                }
              ),
              with_private_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"private_key" expected to be of type "string"';
                {
                  private_key: converted,
                }
              ),
            },
            sds:: {
              local block = self,
              new(secret_name):: (
                {}
                + block.with_secret_name(secret_name)
              ),
              with_secret_name(value):: (
                local converted = value;
                assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                {
                  secret_name: converted,
                }
              ),
            },
            with_file(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                file: value,
              }
            ),
            with_sds(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                sds: value,
              }
            ),
            with_file_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                file+: converted,
              }
            ),
            with_sds_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                sds+: converted,
              }
            ),
          },
          validation:: {
            local block = self,
            new():: (
              {}
            ),
            subject_alternative_names:: {
              local block = self,
              new():: (
                {}
              ),
              match:: {
                local block = self,
                new(exact):: (
                  {}
                  + block.with_exact(exact)
                ),
                with_exact(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                  {
                    exact: converted,
                  }
                ),
                with_exact_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                  {
                    exact+: converted,
                  }
                ),
              },
              with_match(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  match: value,
                }
              ),
              with_match_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  match+: converted,
                }
              ),
            },
            trust:: {
              local block = self,
              new():: (
                {}
              ),
              acm:: {
                local block = self,
                new(certificate_authority_arns):: (
                  {}
                  + block.with_certificate_authority_arns(certificate_authority_arns)
                ),
                with_certificate_authority_arns(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
                  {
                    certificate_authority_arns: converted,
                  }
                ),
                with_certificate_authority_arns_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
                  {
                    certificate_authority_arns+: converted,
                  }
                ),
              },
              file:: {
                local block = self,
                new(certificate_chain):: (
                  {}
                  + block.with_certificate_chain(certificate_chain)
                ),
                with_certificate_chain(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                  {
                    certificate_chain: converted,
                  }
                ),
              },
              sds:: {
                local block = self,
                new(secret_name):: (
                  {}
                  + block.with_secret_name(secret_name)
                ),
                with_secret_name(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                  {
                    secret_name: converted,
                  }
                ),
              },
              with_acm(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  acm: value,
                }
              ),
              with_file(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  file: value,
                }
              ),
              with_sds(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  sds: value,
                }
              ),
              with_acm_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  acm+: converted,
                }
              ),
              with_file_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  file+: converted,
                }
              ),
              with_sds_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  sds+: converted,
                }
              ),
            },
            with_subject_alternative_names(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                subject_alternative_names: value,
              }
            ),
            with_trust(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                trust: value,
              }
            ),
            with_subject_alternative_names_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                subject_alternative_names+: converted,
              }
            ),
            with_trust_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                trust+: converted,
              }
            ),
          },
          with_certificate(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              certificate: value,
            }
          ),
          with_validation(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              validation: value,
            }
          ),
          with_certificate_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              certificate+: converted,
            }
          ),
          with_validation_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              validation+: converted,
            }
          ),
        },
        with_tls(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tls: value,
          }
        ),
        with_tls_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tls+: converted,
          }
        ),
      },
      with_client_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_policy: value,
        }
      ),
      with_client_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_policy+: converted,
        }
      ),
    },
    listener:: {
      local block = self,
      new():: (
        {}
      ),
      connection_pool:: {
        local block = self,
        new():: (
          {}
        ),
        grpc:: {
          local block = self,
          new(max_requests):: (
            {}
            + block.with_max_requests(max_requests)
          ),
          with_max_requests(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_requests" expected to be of type "number"';
            {
              max_requests: converted,
            }
          ),
        },
        http:: {
          local block = self,
          new(max_connections):: (
            {}
            + block.with_max_connections(max_connections)
          ),
          with_max_connections(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_connections" expected to be of type "number"';
            {
              max_connections: converted,
            }
          ),
          with_max_pending_requests(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_pending_requests" expected to be of type "number"';
            {
              max_pending_requests: converted,
            }
          ),
        },
        http2:: {
          local block = self,
          new(max_requests):: (
            {}
            + block.with_max_requests(max_requests)
          ),
          with_max_requests(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_requests" expected to be of type "number"';
            {
              max_requests: converted,
            }
          ),
        },
        tcp:: {
          local block = self,
          new(max_connections):: (
            {}
            + block.with_max_connections(max_connections)
          ),
          with_max_connections(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_connections" expected to be of type "number"';
            {
              max_connections: converted,
            }
          ),
        },
        with_grpc(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            grpc: value,
          }
        ),
        with_http(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http: value,
          }
        ),
        with_http2(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http2: value,
          }
        ),
        with_tcp(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tcp: value,
          }
        ),
        with_grpc_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            grpc+: converted,
          }
        ),
        with_http_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http+: converted,
          }
        ),
        with_http2_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http2+: converted,
          }
        ),
        with_tcp_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tcp+: converted,
          }
        ),
      },
      health_check:: {
        local block = self,
        new(healthy_threshold, interval_millis, protocol, timeout_millis, unhealthy_threshold):: (
          {}
          + block.with_healthy_threshold(healthy_threshold)
          + block.with_interval_millis(interval_millis)
          + block.with_protocol(protocol)
          + block.with_timeout_millis(timeout_millis)
          + block.with_unhealthy_threshold(unhealthy_threshold)
        ),
        with_healthy_threshold(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
          {
            healthy_threshold: converted,
          }
        ),
        with_interval_millis(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval_millis" expected to be of type "number"';
          {
            interval_millis: converted,
          }
        ),
        with_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"path" expected to be of type "string"';
          {
            path: converted,
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
        with_timeout_millis(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"timeout_millis" expected to be of type "number"';
          {
            timeout_millis: converted,
          }
        ),
        with_unhealthy_threshold(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"unhealthy_threshold" expected to be of type "number"';
          {
            unhealthy_threshold: converted,
          }
        ),
      },
      outlier_detection:: {
        local block = self,
        new(max_ejection_percent, max_server_errors):: (
          {}
          + block.with_max_ejection_percent(max_ejection_percent)
          + block.with_max_server_errors(max_server_errors)
        ),
        with_max_ejection_percent(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_ejection_percent" expected to be of type "number"';
          {
            max_ejection_percent: converted,
          }
        ),
        with_max_server_errors(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_server_errors" expected to be of type "number"';
          {
            max_server_errors: converted,
          }
        ),
        base_ejection_duration:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        interval:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_base_ejection_duration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            base_ejection_duration: value,
          }
        ),
        with_interval(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            interval: value,
          }
        ),
        with_base_ejection_duration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            base_ejection_duration+: converted,
          }
        ),
        with_interval_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            interval+: converted,
          }
        ),
      },
      port_mapping:: {
        local block = self,
        new(port, protocol):: (
          {}
          + block.with_port(port)
          + block.with_protocol(protocol)
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
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        grpc:: {
          local block = self,
          new():: (
            {}
          ),
          idle:: {
            local block = self,
            new(unit, value):: (
              {}
              + block.with_unit(unit)
              + block.with_value(value)
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          per_request:: {
            local block = self,
            new(unit, value):: (
              {}
              + block.with_unit(unit)
              + block.with_value(value)
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          with_idle(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              idle: value,
            }
          ),
          with_per_request(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              per_request: value,
            }
          ),
          with_idle_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              idle+: converted,
            }
          ),
          with_per_request_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              per_request+: converted,
            }
          ),
        },
        http:: {
          local block = self,
          new():: (
            {}
          ),
          idle:: {
            local block = self,
            new(unit, value):: (
              {}
              + block.with_unit(unit)
              + block.with_value(value)
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          per_request:: {
            local block = self,
            new(unit, value):: (
              {}
              + block.with_unit(unit)
              + block.with_value(value)
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          with_idle(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              idle: value,
            }
          ),
          with_per_request(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              per_request: value,
            }
          ),
          with_idle_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              idle+: converted,
            }
          ),
          with_per_request_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              per_request+: converted,
            }
          ),
        },
        http2:: {
          local block = self,
          new():: (
            {}
          ),
          idle:: {
            local block = self,
            new(unit, value):: (
              {}
              + block.with_unit(unit)
              + block.with_value(value)
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          per_request:: {
            local block = self,
            new(unit, value):: (
              {}
              + block.with_unit(unit)
              + block.with_value(value)
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          with_idle(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              idle: value,
            }
          ),
          with_per_request(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              per_request: value,
            }
          ),
          with_idle_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              idle+: converted,
            }
          ),
          with_per_request_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              per_request+: converted,
            }
          ),
        },
        tcp:: {
          local block = self,
          new():: (
            {}
          ),
          idle:: {
            local block = self,
            new(unit, value):: (
              {}
              + block.with_unit(unit)
              + block.with_value(value)
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          with_idle(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              idle: value,
            }
          ),
          with_idle_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              idle+: converted,
            }
          ),
        },
        with_grpc(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            grpc: value,
          }
        ),
        with_http(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http: value,
          }
        ),
        with_http2(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http2: value,
          }
        ),
        with_tcp(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tcp: value,
          }
        ),
        with_grpc_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            grpc+: converted,
          }
        ),
        with_http_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http+: converted,
          }
        ),
        with_http2_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http2+: converted,
          }
        ),
        with_tcp_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tcp+: converted,
          }
        ),
      },
      tls:: {
        local block = self,
        new(mode):: (
          {}
          + block.with_mode(mode)
        ),
        with_mode(value):: (
          local converted = value;
          assert std.isString(converted) : '"mode" expected to be of type "string"';
          {
            mode: converted,
          }
        ),
        certificate:: {
          local block = self,
          new():: (
            {}
          ),
          acm:: {
            local block = self,
            new(certificate_arn):: (
              {}
              + block.with_certificate_arn(certificate_arn)
            ),
            with_certificate_arn(value):: (
              local converted = value;
              assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
              {
                certificate_arn: converted,
              }
            ),
          },
          file:: {
            local block = self,
            new(certificate_chain, private_key):: (
              {}
              + block.with_certificate_chain(certificate_chain)
              + block.with_private_key(private_key)
            ),
            with_certificate_chain(value):: (
              local converted = value;
              assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
              {
                certificate_chain: converted,
              }
            ),
            with_private_key(value):: (
              local converted = value;
              assert std.isString(converted) : '"private_key" expected to be of type "string"';
              {
                private_key: converted,
              }
            ),
          },
          sds:: {
            local block = self,
            new(secret_name):: (
              {}
              + block.with_secret_name(secret_name)
            ),
            with_secret_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"secret_name" expected to be of type "string"';
              {
                secret_name: converted,
              }
            ),
          },
          with_acm(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              acm: value,
            }
          ),
          with_file(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              file: value,
            }
          ),
          with_sds(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sds: value,
            }
          ),
          with_acm_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              acm+: converted,
            }
          ),
          with_file_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              file+: converted,
            }
          ),
          with_sds_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sds+: converted,
            }
          ),
        },
        validation:: {
          local block = self,
          new():: (
            {}
          ),
          subject_alternative_names:: {
            local block = self,
            new():: (
              {}
            ),
            match:: {
              local block = self,
              new(exact):: (
                {}
                + block.with_exact(exact)
              ),
              with_exact(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                {
                  exact: converted,
                }
              ),
              with_exact_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                {
                  exact+: converted,
                }
              ),
            },
            with_match(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                match: value,
              }
            ),
            with_match_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                match+: converted,
              }
            ),
          },
          trust:: {
            local block = self,
            new():: (
              {}
            ),
            file:: {
              local block = self,
              new(certificate_chain):: (
                {}
                + block.with_certificate_chain(certificate_chain)
              ),
              with_certificate_chain(value):: (
                local converted = value;
                assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                {
                  certificate_chain: converted,
                }
              ),
            },
            sds:: {
              local block = self,
              new(secret_name):: (
                {}
                + block.with_secret_name(secret_name)
              ),
              with_secret_name(value):: (
                local converted = value;
                assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                {
                  secret_name: converted,
                }
              ),
            },
            with_file(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                file: value,
              }
            ),
            with_sds(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                sds: value,
              }
            ),
            with_file_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                file+: converted,
              }
            ),
            with_sds_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                sds+: converted,
              }
            ),
          },
          with_subject_alternative_names(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              subject_alternative_names: value,
            }
          ),
          with_trust(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              trust: value,
            }
          ),
          with_subject_alternative_names_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              subject_alternative_names+: converted,
            }
          ),
          with_trust_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              trust+: converted,
            }
          ),
        },
        with_certificate(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            certificate: value,
          }
        ),
        with_validation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            validation: value,
          }
        ),
        with_certificate_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            certificate+: converted,
          }
        ),
        with_validation_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            validation+: converted,
          }
        ),
      },
      with_connection_pool(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          connection_pool: value,
        }
      ),
      with_health_check(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          health_check: value,
        }
      ),
      with_outlier_detection(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          outlier_detection: value,
        }
      ),
      with_port_mapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_mapping: value,
        }
      ),
      with_timeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
        }
      ),
      with_tls(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tls: value,
        }
      ),
      with_connection_pool_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          connection_pool+: converted,
        }
      ),
      with_health_check_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          health_check+: converted,
        }
      ),
      with_outlier_detection_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          outlier_detection+: converted,
        }
      ),
      with_port_mapping_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_mapping+: converted,
        }
      ),
      with_timeout_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
      with_tls_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tls+: converted,
        }
      ),
    },
    logging:: {
      local block = self,
      new():: (
        {}
      ),
      access_log:: {
        local block = self,
        new():: (
          {}
        ),
        file:: {
          local block = self,
          new(path):: (
            {}
            + block.with_path(path)
          ),
          with_path(value):: (
            local converted = value;
            assert std.isString(converted) : '"path" expected to be of type "string"';
            {
              path: converted,
            }
          ),
          format:: {
            local block = self,
            new():: (
              {}
            ),
            with_text(value):: (
              local converted = value;
              assert std.isString(converted) : '"text" expected to be of type "string"';
              {
                text: converted,
              }
            ),
            json:: {
              local block = self,
              new(key, value):: (
                {}
                + block.with_key(key)
                + block.with_value(value)
              ),
              with_key(value):: (
                local converted = value;
                assert std.isString(converted) : '"key" expected to be of type "string"';
                {
                  key: converted,
                }
              ),
              with_value(value):: (
                local converted = value;
                assert std.isString(converted) : '"value" expected to be of type "string"';
                {
                  value: converted,
                }
              ),
            },
            with_json(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                json: value,
              }
            ),
            with_json_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                json+: converted,
              }
            ),
          },
          with_format(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              format: value,
            }
          ),
          with_format_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              format+: converted,
            }
          ),
        },
        with_file(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file: value,
          }
        ),
        with_file_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file+: converted,
          }
        ),
      },
      with_access_log(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_log: value,
        }
      ),
      with_access_log_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_log+: converted,
        }
      ),
    },
    service_discovery:: {
      local block = self,
      new():: (
        {}
      ),
      aws_cloud_map:: {
        local block = self,
        new(namespace_name, service_name):: (
          {}
          + block.with_namespace_name(namespace_name)
          + block.with_service_name(service_name)
        ),
        with_attributes(value):: (
          local converted = value;
          assert std.isObject(converted) : '"attributes" expected to be of type "map"';
          {
            attributes: converted,
          }
        ),
        with_namespace_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"namespace_name" expected to be of type "string"';
          {
            namespace_name: converted,
          }
        ),
        with_service_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"service_name" expected to be of type "string"';
          {
            service_name: converted,
          }
        ),
      },
      dns:: {
        local block = self,
        new(hostname):: (
          {}
          + block.with_hostname(hostname)
        ),
        with_hostname(value):: (
          local converted = value;
          assert std.isString(converted) : '"hostname" expected to be of type "string"';
          {
            hostname: converted,
          }
        ),
        with_ip_preference(value):: (
          local converted = value;
          assert std.isString(converted) : '"ip_preference" expected to be of type "string"';
          {
            ip_preference: converted,
          }
        ),
        with_response_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"response_type" expected to be of type "string"';
          {
            response_type: converted,
          }
        ),
      },
      with_aws_cloud_map(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          aws_cloud_map: value,
        }
      ),
      with_dns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dns: value,
        }
      ),
      with_aws_cloud_map_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          aws_cloud_map+: converted,
        }
      ),
      with_dns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dns+: converted,
        }
      ),
    },
    with_backend(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        backend: value,
      }
    ),
    with_backend_defaults(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        backend_defaults: value,
      }
    ),
    with_listener(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        listener: value,
      }
    ),
    with_logging(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        logging: value,
      }
    ),
    with_service_discovery(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_discovery: value,
      }
    ),
    with_backend_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        backend+: converted,
      }
    ),
    with_backend_defaults_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        backend_defaults+: converted,
      }
    ),
    with_listener_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        listener+: converted,
      }
    ),
    with_logging_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        logging+: converted,
      }
    ),
    with_service_discovery_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_discovery+: converted,
      }
    ),
  },
  with_spec(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec: value,
    }
  ),
  with_spec_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec+: converted,
    }
  ),
}
