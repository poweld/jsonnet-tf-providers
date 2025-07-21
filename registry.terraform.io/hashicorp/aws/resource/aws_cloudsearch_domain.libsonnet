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
  with_document_service_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_service_endpoint" expected to be of type "string"';
    {
      document_service_endpoint: converted,
    }
  ),
  with_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_multi_az(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
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
  with_search_service_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"search_service_endpoint" expected to be of type "string"';
    {
      search_service_endpoint: converted,
    }
  ),
  endpoint_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_enforce_https(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enforce_https" expected to be of type "bool"';
      {
        enforce_https: converted,
      }
    ),
    with_tls_security_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_security_policy" expected to be of type "string"';
      {
        tls_security_policy: converted,
      }
    ),
  },
  index_field:: {
    local block = self,
    new(name, type):: (
      {}
      + block.with_name(name)
      + block.with_type(type)
    ),
    with_analysis_scheme(value):: (
      local converted = value;
      assert std.isString(converted) : '"analysis_scheme" expected to be of type "string"';
      {
        analysis_scheme: converted,
      }
    ),
    with_default_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_value" expected to be of type "string"';
      {
        default_value: converted,
      }
    ),
    with_facet(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"facet" expected to be of type "bool"';
      {
        facet: converted,
      }
    ),
    with_highlight(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"highlight" expected to be of type "bool"';
      {
        highlight: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_return(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"return" expected to be of type "bool"';
      {
        return: converted,
      }
    ),
    with_search(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"search" expected to be of type "bool"';
      {
        search: converted,
      }
    ),
    with_sort(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"sort" expected to be of type "bool"';
      {
        sort: converted,
      }
    ),
    with_source_fields(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_fields" expected to be of type "string"';
      {
        source_fields: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  scaling_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    with_desired_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"desired_instance_type" expected to be of type "string"';
      {
        desired_instance_type: converted,
      }
    ),
    with_desired_partition_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_partition_count" expected to be of type "number"';
      {
        desired_partition_count: converted,
      }
    ),
    with_desired_replication_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_replication_count" expected to be of type "number"';
      {
        desired_replication_count: converted,
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
  with_endpoint_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_options: value,
    }
  ),
  with_index_field(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      index_field: value,
    }
  ),
  with_scaling_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_parameters: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_endpoint_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_options+: converted,
    }
  ),
  with_index_field_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      index_field+: converted,
    }
  ),
  with_scaling_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_parameters+: converted,
    }
  ),
}
