{
  local block = self,
  new(group_by_attribute, name):: (
    {}
    + block.with_group_by_attribute(group_by_attribute)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_group_by_attribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_by_attribute" expected to be of type "string"';
    {
      group_by_attribute: converted,
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
  filters:: {
    local block = self,
    new():: (
      {}
    ),
    aws_account_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    company_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    compliance_status:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    confidence:: {
      local block = self,
      new():: (
        {}
      ),
      with_eq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    created_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    criticality:: {
      local block = self,
      new():: (
        {}
      ),
      with_eq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    description:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    finding_provider_fields_confidence:: {
      local block = self,
      new():: (
        {}
      ),
      with_eq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    finding_provider_fields_criticality:: {
      local block = self,
      new():: (
        {}
      ),
      with_eq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    finding_provider_fields_related_findings_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    finding_provider_fields_related_findings_product_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    finding_provider_fields_severity_label:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    finding_provider_fields_severity_original:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    finding_provider_fields_types:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    first_observed_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    generator_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    keyword:: {
      local block = self,
      new(value):: (
        {}
        + block.with_value(value)
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    last_observed_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    malware_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    malware_path:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    malware_state:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    malware_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    network_destination_domain:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    network_destination_ipv4:: {
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
    },
    network_destination_ipv6:: {
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
    },
    network_destination_port:: {
      local block = self,
      new():: (
        {}
      ),
      with_eq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    network_direction:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    network_protocol:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    network_source_domain:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    network_source_ipv4:: {
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
    },
    network_source_ipv6:: {
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
    },
    network_source_mac:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    network_source_port:: {
      local block = self,
      new():: (
        {}
      ),
      with_eq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    note_text:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    note_updated_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    note_updated_by:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    process_launched_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    process_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    process_parent_pid:: {
      local block = self,
      new():: (
        {}
      ),
      with_eq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    process_path:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    process_pid:: {
      local block = self,
      new():: (
        {}
      ),
      with_eq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    process_terminated_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    product_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    product_fields:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
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
    product_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    recommendation_text:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    record_state:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    related_findings_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    related_findings_product_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_ec2_instance_iam_instance_profile_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_ec2_instance_image_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_ec2_instance_ipv4_addresses:: {
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
    },
    resource_aws_ec2_instance_ipv6_addresses:: {
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
    },
    resource_aws_ec2_instance_key_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_ec2_instance_launched_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    resource_aws_ec2_instance_subnet_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_ec2_instance_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_ec2_instance_vpc_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_iam_access_key_created_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    resource_aws_iam_access_key_status:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_iam_access_key_user_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_s3_bucket_owner_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_aws_s3_bucket_owner_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_container_image_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_container_image_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_container_launched_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    resource_container_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_details_other:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
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
    resource_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_partition:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_region:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_tags:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
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
    resource_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    severity_label:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    source_url:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    threat_intel_indicator_category:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    threat_intel_indicator_last_observed_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    threat_intel_indicator_source:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    threat_intel_indicator_source_url:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    threat_intel_indicator_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    threat_intel_indicator_value:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    title:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    updated_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      with_start(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
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
      with_date_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      with_date_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    user_defined_values:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
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
    verification_state:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    workflow_status:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.with_comparison(comparison)
        + block.with_value(value)
      ),
      with_comparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    with_aws_account_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_id: value,
      }
    ),
    with_company_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        company_name: value,
      }
    ),
    with_compliance_status(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_status: value,
      }
    ),
    with_confidence(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confidence: value,
      }
    ),
    with_created_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        created_at: value,
      }
    ),
    with_criticality(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        criticality: value,
      }
    ),
    with_description(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        description: value,
      }
    ),
    with_finding_provider_fields_confidence(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_confidence: value,
      }
    ),
    with_finding_provider_fields_criticality(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_criticality: value,
      }
    ),
    with_finding_provider_fields_related_findings_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_related_findings_id: value,
      }
    ),
    with_finding_provider_fields_related_findings_product_arn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_related_findings_product_arn: value,
      }
    ),
    with_finding_provider_fields_severity_label(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_severity_label: value,
      }
    ),
    with_finding_provider_fields_severity_original(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_severity_original: value,
      }
    ),
    with_finding_provider_fields_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_types: value,
      }
    ),
    with_first_observed_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        first_observed_at: value,
      }
    ),
    with_generator_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        generator_id: value,
      }
    ),
    with_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        id: value,
      }
    ),
    with_keyword(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        keyword: value,
      }
    ),
    with_last_observed_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at: value,
      }
    ),
    with_malware_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_name: value,
      }
    ),
    with_malware_path(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_path: value,
      }
    ),
    with_malware_state(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_state: value,
      }
    ),
    with_malware_type(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_type: value,
      }
    ),
    with_network_destination_domain(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_domain: value,
      }
    ),
    with_network_destination_ipv4(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_ipv4: value,
      }
    ),
    with_network_destination_ipv6(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_ipv6: value,
      }
    ),
    with_network_destination_port(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_port: value,
      }
    ),
    with_network_direction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_direction: value,
      }
    ),
    with_network_protocol(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_protocol: value,
      }
    ),
    with_network_source_domain(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_domain: value,
      }
    ),
    with_network_source_ipv4(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_ipv4: value,
      }
    ),
    with_network_source_ipv6(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_ipv6: value,
      }
    ),
    with_network_source_mac(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_mac: value,
      }
    ),
    with_network_source_port(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_port: value,
      }
    ),
    with_note_text(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_text: value,
      }
    ),
    with_note_updated_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_updated_at: value,
      }
    ),
    with_note_updated_by(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_updated_by: value,
      }
    ),
    with_process_launched_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_launched_at: value,
      }
    ),
    with_process_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_name: value,
      }
    ),
    with_process_parent_pid(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_parent_pid: value,
      }
    ),
    with_process_path(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_path: value,
      }
    ),
    with_process_pid(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_pid: value,
      }
    ),
    with_process_terminated_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_terminated_at: value,
      }
    ),
    with_product_arn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_arn: value,
      }
    ),
    with_product_fields(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_fields: value,
      }
    ),
    with_product_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_name: value,
      }
    ),
    with_recommendation_text(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recommendation_text: value,
      }
    ),
    with_record_state(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        record_state: value,
      }
    ),
    with_related_findings_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_findings_id: value,
      }
    ),
    with_related_findings_product_arn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_findings_product_arn: value,
      }
    ),
    with_resource_aws_ec2_instance_iam_instance_profile_arn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_iam_instance_profile_arn: value,
      }
    ),
    with_resource_aws_ec2_instance_image_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_image_id: value,
      }
    ),
    with_resource_aws_ec2_instance_ipv4_addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_ipv4_addresses: value,
      }
    ),
    with_resource_aws_ec2_instance_ipv6_addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_ipv6_addresses: value,
      }
    ),
    with_resource_aws_ec2_instance_key_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_key_name: value,
      }
    ),
    with_resource_aws_ec2_instance_launched_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_launched_at: value,
      }
    ),
    with_resource_aws_ec2_instance_subnet_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_subnet_id: value,
      }
    ),
    with_resource_aws_ec2_instance_type(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_type: value,
      }
    ),
    with_resource_aws_ec2_instance_vpc_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_vpc_id: value,
      }
    ),
    with_resource_aws_iam_access_key_created_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_created_at: value,
      }
    ),
    with_resource_aws_iam_access_key_status(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_status: value,
      }
    ),
    with_resource_aws_iam_access_key_user_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_user_name: value,
      }
    ),
    with_resource_aws_s3_bucket_owner_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_s3_bucket_owner_id: value,
      }
    ),
    with_resource_aws_s3_bucket_owner_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_s3_bucket_owner_name: value,
      }
    ),
    with_resource_container_image_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_image_id: value,
      }
    ),
    with_resource_container_image_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_image_name: value,
      }
    ),
    with_resource_container_launched_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_launched_at: value,
      }
    ),
    with_resource_container_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_name: value,
      }
    ),
    with_resource_details_other(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_details_other: value,
      }
    ),
    with_resource_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_id: value,
      }
    ),
    with_resource_partition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_partition: value,
      }
    ),
    with_resource_region(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_region: value,
      }
    ),
    with_resource_tags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tags: value,
      }
    ),
    with_resource_type(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_type: value,
      }
    ),
    with_severity_label(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        severity_label: value,
      }
    ),
    with_source_url(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_url: value,
      }
    ),
    with_threat_intel_indicator_category(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_category: value,
      }
    ),
    with_threat_intel_indicator_last_observed_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_last_observed_at: value,
      }
    ),
    with_threat_intel_indicator_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_source: value,
      }
    ),
    with_threat_intel_indicator_source_url(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_source_url: value,
      }
    ),
    with_threat_intel_indicator_type(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_type: value,
      }
    ),
    with_threat_intel_indicator_value(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_value: value,
      }
    ),
    with_title(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        title: value,
      }
    ),
    with_type(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        type: value,
      }
    ),
    with_updated_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        updated_at: value,
      }
    ),
    with_user_defined_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_defined_values: value,
      }
    ),
    with_verification_state(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        verification_state: value,
      }
    ),
    with_workflow_status(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        workflow_status: value,
      }
    ),
    with_aws_account_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_id+: converted,
      }
    ),
    with_company_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        company_name+: converted,
      }
    ),
    with_compliance_status_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_status+: converted,
      }
    ),
    with_confidence_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confidence+: converted,
      }
    ),
    with_created_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        created_at+: converted,
      }
    ),
    with_criticality_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        criticality+: converted,
      }
    ),
    with_description_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        description+: converted,
      }
    ),
    with_finding_provider_fields_confidence_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_confidence+: converted,
      }
    ),
    with_finding_provider_fields_criticality_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_criticality+: converted,
      }
    ),
    with_finding_provider_fields_related_findings_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_related_findings_id+: converted,
      }
    ),
    with_finding_provider_fields_related_findings_product_arn_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_related_findings_product_arn+: converted,
      }
    ),
    with_finding_provider_fields_severity_label_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_severity_label+: converted,
      }
    ),
    with_finding_provider_fields_severity_original_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_severity_original+: converted,
      }
    ),
    with_finding_provider_fields_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_types+: converted,
      }
    ),
    with_first_observed_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        first_observed_at+: converted,
      }
    ),
    with_generator_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        generator_id+: converted,
      }
    ),
    with_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        id+: converted,
      }
    ),
    with_keyword_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        keyword+: converted,
      }
    ),
    with_last_observed_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at+: converted,
      }
    ),
    with_malware_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_name+: converted,
      }
    ),
    with_malware_path_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_path+: converted,
      }
    ),
    with_malware_state_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_state+: converted,
      }
    ),
    with_malware_type_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_type+: converted,
      }
    ),
    with_network_destination_domain_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_domain+: converted,
      }
    ),
    with_network_destination_ipv4_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_ipv4+: converted,
      }
    ),
    with_network_destination_ipv6_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_ipv6+: converted,
      }
    ),
    with_network_destination_port_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_port+: converted,
      }
    ),
    with_network_direction_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_direction+: converted,
      }
    ),
    with_network_protocol_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_protocol+: converted,
      }
    ),
    with_network_source_domain_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_domain+: converted,
      }
    ),
    with_network_source_ipv4_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_ipv4+: converted,
      }
    ),
    with_network_source_ipv6_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_ipv6+: converted,
      }
    ),
    with_network_source_mac_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_mac+: converted,
      }
    ),
    with_network_source_port_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_port+: converted,
      }
    ),
    with_note_text_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_text+: converted,
      }
    ),
    with_note_updated_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_updated_at+: converted,
      }
    ),
    with_note_updated_by_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_updated_by+: converted,
      }
    ),
    with_process_launched_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_launched_at+: converted,
      }
    ),
    with_process_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_name+: converted,
      }
    ),
    with_process_parent_pid_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_parent_pid+: converted,
      }
    ),
    with_process_path_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_path+: converted,
      }
    ),
    with_process_pid_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_pid+: converted,
      }
    ),
    with_process_terminated_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_terminated_at+: converted,
      }
    ),
    with_product_arn_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_arn+: converted,
      }
    ),
    with_product_fields_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_fields+: converted,
      }
    ),
    with_product_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_name+: converted,
      }
    ),
    with_recommendation_text_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recommendation_text+: converted,
      }
    ),
    with_record_state_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        record_state+: converted,
      }
    ),
    with_related_findings_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_findings_id+: converted,
      }
    ),
    with_related_findings_product_arn_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_findings_product_arn+: converted,
      }
    ),
    with_resource_aws_ec2_instance_iam_instance_profile_arn_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_iam_instance_profile_arn+: converted,
      }
    ),
    with_resource_aws_ec2_instance_image_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_image_id+: converted,
      }
    ),
    with_resource_aws_ec2_instance_ipv4_addresses_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_ipv4_addresses+: converted,
      }
    ),
    with_resource_aws_ec2_instance_ipv6_addresses_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_ipv6_addresses+: converted,
      }
    ),
    with_resource_aws_ec2_instance_key_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_key_name+: converted,
      }
    ),
    with_resource_aws_ec2_instance_launched_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_launched_at+: converted,
      }
    ),
    with_resource_aws_ec2_instance_subnet_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_subnet_id+: converted,
      }
    ),
    with_resource_aws_ec2_instance_type_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_type+: converted,
      }
    ),
    with_resource_aws_ec2_instance_vpc_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_vpc_id+: converted,
      }
    ),
    with_resource_aws_iam_access_key_created_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_created_at+: converted,
      }
    ),
    with_resource_aws_iam_access_key_status_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_status+: converted,
      }
    ),
    with_resource_aws_iam_access_key_user_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_user_name+: converted,
      }
    ),
    with_resource_aws_s3_bucket_owner_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_s3_bucket_owner_id+: converted,
      }
    ),
    with_resource_aws_s3_bucket_owner_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_s3_bucket_owner_name+: converted,
      }
    ),
    with_resource_container_image_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_image_id+: converted,
      }
    ),
    with_resource_container_image_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_image_name+: converted,
      }
    ),
    with_resource_container_launched_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_launched_at+: converted,
      }
    ),
    with_resource_container_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_name+: converted,
      }
    ),
    with_resource_details_other_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_details_other+: converted,
      }
    ),
    with_resource_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_id+: converted,
      }
    ),
    with_resource_partition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_partition+: converted,
      }
    ),
    with_resource_region_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_region+: converted,
      }
    ),
    with_resource_tags_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tags+: converted,
      }
    ),
    with_resource_type_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_type+: converted,
      }
    ),
    with_severity_label_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        severity_label+: converted,
      }
    ),
    with_source_url_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_url+: converted,
      }
    ),
    with_threat_intel_indicator_category_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_category+: converted,
      }
    ),
    with_threat_intel_indicator_last_observed_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_last_observed_at+: converted,
      }
    ),
    with_threat_intel_indicator_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_source+: converted,
      }
    ),
    with_threat_intel_indicator_source_url_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_source_url+: converted,
      }
    ),
    with_threat_intel_indicator_type_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_type+: converted,
      }
    ),
    with_threat_intel_indicator_value_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_value+: converted,
      }
    ),
    with_title_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        title+: converted,
      }
    ),
    with_type_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        type+: converted,
      }
    ),
    with_updated_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        updated_at+: converted,
      }
    ),
    with_user_defined_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_defined_values+: converted,
      }
    ),
    with_verification_state_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        verification_state+: converted,
      }
    ),
    with_workflow_status_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        workflow_status+: converted,
      }
    ),
  },
  with_filters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  with_filters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
}
