{
  local block = self,
  new(description, rule_name, rule_order):: (
    {}
    + block.with_description(description)
    + block.with_rule_name(rule_name)
    + block.with_rule_order(rule_order)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_is_terminal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_terminal" expected to be of type "bool"';
    {
      is_terminal: converted,
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
  with_rule_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_name" expected to be of type "string"';
    {
      rule_name: converted,
    }
  ),
  with_rule_order(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rule_order" expected to be of type "number"';
    {
      rule_order: converted,
    }
  ),
  with_rule_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_status" expected to be of type "string"';
    {
      rule_status: converted,
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
  actions:: {
    local block = self,
    new():: (
      {}
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    finding_fields_update:: {
      local block = self,
      new():: (
        {}
      ),
      with_confidence(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"confidence" expected to be of type "number"';
        {
          confidence: converted,
        }
      ),
      with_criticality(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"criticality" expected to be of type "number"';
        {
          criticality: converted,
        }
      ),
      with_types(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"types" expected to be of type "list"';
        {
          types: converted,
        }
      ),
      with_types_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"types" expected to be of type "list"';
        {
          types+: converted,
        }
      ),
      with_user_defined_fields(value):: (
        local converted = value;
        assert std.isObject(converted) : '"user_defined_fields" expected to be of type "map"';
        {
          user_defined_fields: converted,
        }
      ),
      with_verification_state(value):: (
        local converted = value;
        assert std.isString(converted) : '"verification_state" expected to be of type "string"';
        {
          verification_state: converted,
        }
      ),
      note:: {
        local block = self,
        new(text, updated_by):: (
          {}
          + block.with_text(text)
          + block.with_updated_by(updated_by)
        ),
        with_text(value):: (
          local converted = value;
          assert std.isString(converted) : '"text" expected to be of type "string"';
          {
            text: converted,
          }
        ),
        with_updated_by(value):: (
          local converted = value;
          assert std.isString(converted) : '"updated_by" expected to be of type "string"';
          {
            updated_by: converted,
          }
        ),
      },
      related_findings:: {
        local block = self,
        new(id, product_arn):: (
          {}
          + block.with_id(id)
          + block.with_product_arn(product_arn)
        ),
        with_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"id" expected to be of type "string"';
          {
            id: converted,
          }
        ),
        with_product_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"product_arn" expected to be of type "string"';
          {
            product_arn: converted,
          }
        ),
      },
      severity:: {
        local block = self,
        new():: (
          {}
        ),
        with_label(value):: (
          local converted = value;
          assert std.isString(converted) : '"label" expected to be of type "string"';
          {
            label: converted,
          }
        ),
        with_product(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"product" expected to be of type "number"';
          {
            product: converted,
          }
        ),
      },
      workflow:: {
        local block = self,
        new():: (
          {}
        ),
        with_status(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      with_note(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          note: value,
        }
      ),
      with_related_findings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          related_findings: value,
        }
      ),
      with_severity(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          severity: value,
        }
      ),
      with_workflow(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          workflow: value,
        }
      ),
      with_note_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          note+: converted,
        }
      ),
      with_related_findings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          related_findings+: converted,
        }
      ),
      with_severity_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          severity+: converted,
        }
      ),
      with_workflow_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          workflow+: converted,
        }
      ),
    },
    with_finding_fields_update(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_fields_update: value,
      }
    ),
    with_finding_fields_update_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_fields_update+: converted,
      }
    ),
  },
  criteria:: {
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
    aws_account_name:: {
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
    compliance_associated_standards_id:: {
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
    compliance_security_control_id:: {
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
        assert std.isNumber(converted) : '"eq" expected to be of type "number"';
        {
          eq: converted,
        }
      ),
      with_gt(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gt" expected to be of type "number"';
        {
          gt: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gte" expected to be of type "number"';
        {
          gte: converted,
        }
      ),
      with_lt(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lt" expected to be of type "number"';
        {
          lt: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lte" expected to be of type "number"';
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
        assert std.isNumber(converted) : '"eq" expected to be of type "number"';
        {
          eq: converted,
        }
      ),
      with_gt(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gt" expected to be of type "number"';
        {
          gt: converted,
        }
      ),
      with_gte(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gte" expected to be of type "number"';
        {
          gte: converted,
        }
      ),
      with_lt(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lt" expected to be of type "number"';
        {
          lt: converted,
        }
      ),
      with_lte(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lte" expected to be of type "number"';
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
    resource_application_arn:: {
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
    resource_application_name:: {
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
    user_defined_fields:: {
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
    with_aws_account_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_name: value,
      }
    ),
    with_company_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        company_name: value,
      }
    ),
    with_compliance_associated_standards_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_associated_standards_id: value,
      }
    ),
    with_compliance_security_control_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_security_control_id: value,
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
    with_last_observed_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at: value,
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
    with_product_arn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_arn: value,
      }
    ),
    with_product_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_name: value,
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
    with_resource_application_arn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_application_arn: value,
      }
    ),
    with_resource_application_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_application_name: value,
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
    with_user_defined_fields(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_defined_fields: value,
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
    with_aws_account_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_name+: converted,
      }
    ),
    with_company_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        company_name+: converted,
      }
    ),
    with_compliance_associated_standards_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_associated_standards_id+: converted,
      }
    ),
    with_compliance_security_control_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_security_control_id+: converted,
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
    with_last_observed_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at+: converted,
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
    with_product_arn_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_arn+: converted,
      }
    ),
    with_product_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_name+: converted,
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
    with_resource_application_arn_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_application_arn+: converted,
      }
    ),
    with_resource_application_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_application_name+: converted,
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
    with_user_defined_fields_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_defined_fields+: converted,
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
  with_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions: value,
    }
  ),
  with_criteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      criteria: value,
    }
  ),
  with_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions+: converted,
    }
  ),
  with_criteria_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      criteria+: converted,
    }
  ),
}
