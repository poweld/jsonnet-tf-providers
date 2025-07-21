{
  local block = self,
  new(action, name):: (
    {}
    + block.with_action(action)
    + block.with_name(name)
  ),
  with_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
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
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"reason" expected to be of type "string"';
    {
      reason: converted,
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
  filter_criteria:: {
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
    code_vulnerability_detector_name:: {
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
    code_vulnerability_detector_tags:: {
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
    code_vulnerability_file_path:: {
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
    component_id:: {
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
    component_type:: {
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
    ec2_instance_image_id:: {
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
    ec2_instance_subnet_id:: {
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
    ec2_instance_vpc_id:: {
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
    ecr_image_architecture:: {
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
    ecr_image_hash:: {
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
    ecr_image_pushed_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      with_start_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    ecr_image_registry:: {
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
    ecr_image_repository_name:: {
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
    ecr_image_tags:: {
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
    epss_score:: {
      local block = self,
      new(lower_inclusive, upper_inclusive):: (
        {}
        + block.with_lower_inclusive(lower_inclusive)
        + block.with_upper_inclusive(upper_inclusive)
      ),
      with_lower_inclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lower_inclusive" expected to be of type "number"';
        {
          lower_inclusive: converted,
        }
      ),
      with_upper_inclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"upper_inclusive" expected to be of type "number"';
        {
          upper_inclusive: converted,
        }
      ),
    },
    exploit_available:: {
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
    finding_arn:: {
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
    finding_status:: {
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
    finding_type:: {
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
      with_end_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      with_start_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    fix_available:: {
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
    inspector_score:: {
      local block = self,
      new(lower_inclusive, upper_inclusive):: (
        {}
        + block.with_lower_inclusive(lower_inclusive)
        + block.with_upper_inclusive(upper_inclusive)
      ),
      with_lower_inclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lower_inclusive" expected to be of type "number"';
        {
          lower_inclusive: converted,
        }
      ),
      with_upper_inclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"upper_inclusive" expected to be of type "number"';
        {
          upper_inclusive: converted,
        }
      ),
    },
    lambda_function_execution_role_arn:: {
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
    lambda_function_last_modified_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      with_start_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    lambda_function_layers:: {
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
    lambda_function_name:: {
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
    lambda_function_runtime:: {
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
      with_end_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      with_start_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
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
    port_range:: {
      local block = self,
      new(begin_inclusive, end_inclusive):: (
        {}
        + block.with_begin_inclusive(begin_inclusive)
        + block.with_end_inclusive(end_inclusive)
      ),
      with_begin_inclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"begin_inclusive" expected to be of type "number"';
        {
          begin_inclusive: converted,
        }
      ),
      with_end_inclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"end_inclusive" expected to be of type "number"';
        {
          end_inclusive: converted,
        }
      ),
    },
    related_vulnerabilities:: {
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
    severity:: {
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
    updated_at:: {
      local block = self,
      new():: (
        {}
      ),
      with_end_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      with_start_inclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    vendor_severity:: {
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
    vulnerability_id:: {
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
    vulnerability_source:: {
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
    vulnerable_packages:: {
      local block = self,
      new():: (
        {}
      ),
      architecture:: {
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
      epoch:: {
        local block = self,
        new(lower_inclusive, upper_inclusive):: (
          {}
          + block.with_lower_inclusive(lower_inclusive)
          + block.with_upper_inclusive(upper_inclusive)
        ),
        with_lower_inclusive(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"lower_inclusive" expected to be of type "number"';
          {
            lower_inclusive: converted,
          }
        ),
        with_upper_inclusive(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"upper_inclusive" expected to be of type "number"';
          {
            upper_inclusive: converted,
          }
        ),
      },
      file_path:: {
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
      name:: {
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
      release:: {
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
      source_lambda_layer_arn:: {
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
      source_layer_hash:: {
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
      version:: {
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
      with_architecture(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          architecture: value,
        }
      ),
      with_epoch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          epoch: value,
        }
      ),
      with_file_path(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          file_path: value,
        }
      ),
      with_name(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          name: value,
        }
      ),
      with_release(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          release: value,
        }
      ),
      with_source_lambda_layer_arn(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_lambda_layer_arn: value,
        }
      ),
      with_source_layer_hash(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_layer_hash: value,
        }
      ),
      with_version(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          version: value,
        }
      ),
      with_architecture_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          architecture+: converted,
        }
      ),
      with_epoch_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          epoch+: converted,
        }
      ),
      with_file_path_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          file_path+: converted,
        }
      ),
      with_name_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          name+: converted,
        }
      ),
      with_release_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          release+: converted,
        }
      ),
      with_source_lambda_layer_arn_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_lambda_layer_arn+: converted,
        }
      ),
      with_source_layer_hash_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_layer_hash+: converted,
        }
      ),
      with_version_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          version+: converted,
        }
      ),
    },
    with_aws_account_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_id: value,
      }
    ),
    with_code_vulnerability_detector_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_detector_name: value,
      }
    ),
    with_code_vulnerability_detector_tags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_detector_tags: value,
      }
    ),
    with_code_vulnerability_file_path(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_file_path: value,
      }
    ),
    with_component_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        component_id: value,
      }
    ),
    with_component_type(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        component_type: value,
      }
    ),
    with_ec2_instance_image_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_image_id: value,
      }
    ),
    with_ec2_instance_subnet_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_subnet_id: value,
      }
    ),
    with_ec2_instance_vpc_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_vpc_id: value,
      }
    ),
    with_ecr_image_architecture(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_architecture: value,
      }
    ),
    with_ecr_image_hash(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_hash: value,
      }
    ),
    with_ecr_image_pushed_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_pushed_at: value,
      }
    ),
    with_ecr_image_registry(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_registry: value,
      }
    ),
    with_ecr_image_repository_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_repository_name: value,
      }
    ),
    with_ecr_image_tags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_tags: value,
      }
    ),
    with_epss_score(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        epss_score: value,
      }
    ),
    with_exploit_available(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exploit_available: value,
      }
    ),
    with_finding_arn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_arn: value,
      }
    ),
    with_finding_status(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_status: value,
      }
    ),
    with_finding_type(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_type: value,
      }
    ),
    with_first_observed_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        first_observed_at: value,
      }
    ),
    with_fix_available(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fix_available: value,
      }
    ),
    with_inspector_score(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inspector_score: value,
      }
    ),
    with_lambda_function_execution_role_arn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_execution_role_arn: value,
      }
    ),
    with_lambda_function_last_modified_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_last_modified_at: value,
      }
    ),
    with_lambda_function_layers(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_layers: value,
      }
    ),
    with_lambda_function_name(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_name: value,
      }
    ),
    with_lambda_function_runtime(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_runtime: value,
      }
    ),
    with_last_observed_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at: value,
      }
    ),
    with_network_protocol(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_protocol: value,
      }
    ),
    with_port_range(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range: value,
      }
    ),
    with_related_vulnerabilities(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_vulnerabilities: value,
      }
    ),
    with_resource_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_id: value,
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
    with_severity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        severity: value,
      }
    ),
    with_title(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        title: value,
      }
    ),
    with_updated_at(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        updated_at: value,
      }
    ),
    with_vendor_severity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vendor_severity: value,
      }
    ),
    with_vulnerability_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerability_id: value,
      }
    ),
    with_vulnerability_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerability_source: value,
      }
    ),
    with_vulnerable_packages(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerable_packages: value,
      }
    ),
    with_aws_account_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_id+: converted,
      }
    ),
    with_code_vulnerability_detector_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_detector_name+: converted,
      }
    ),
    with_code_vulnerability_detector_tags_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_detector_tags+: converted,
      }
    ),
    with_code_vulnerability_file_path_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_file_path+: converted,
      }
    ),
    with_component_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        component_id+: converted,
      }
    ),
    with_component_type_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        component_type+: converted,
      }
    ),
    with_ec2_instance_image_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_image_id+: converted,
      }
    ),
    with_ec2_instance_subnet_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_subnet_id+: converted,
      }
    ),
    with_ec2_instance_vpc_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_vpc_id+: converted,
      }
    ),
    with_ecr_image_architecture_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_architecture+: converted,
      }
    ),
    with_ecr_image_hash_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_hash+: converted,
      }
    ),
    with_ecr_image_pushed_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_pushed_at+: converted,
      }
    ),
    with_ecr_image_registry_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_registry+: converted,
      }
    ),
    with_ecr_image_repository_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_repository_name+: converted,
      }
    ),
    with_ecr_image_tags_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_tags+: converted,
      }
    ),
    with_epss_score_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        epss_score+: converted,
      }
    ),
    with_exploit_available_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exploit_available+: converted,
      }
    ),
    with_finding_arn_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_arn+: converted,
      }
    ),
    with_finding_status_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_status+: converted,
      }
    ),
    with_finding_type_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_type+: converted,
      }
    ),
    with_first_observed_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        first_observed_at+: converted,
      }
    ),
    with_fix_available_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fix_available+: converted,
      }
    ),
    with_inspector_score_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inspector_score+: converted,
      }
    ),
    with_lambda_function_execution_role_arn_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_execution_role_arn+: converted,
      }
    ),
    with_lambda_function_last_modified_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_last_modified_at+: converted,
      }
    ),
    with_lambda_function_layers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_layers+: converted,
      }
    ),
    with_lambda_function_name_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_name+: converted,
      }
    ),
    with_lambda_function_runtime_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_runtime+: converted,
      }
    ),
    with_last_observed_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at+: converted,
      }
    ),
    with_network_protocol_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_protocol+: converted,
      }
    ),
    with_port_range_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range+: converted,
      }
    ),
    with_related_vulnerabilities_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_vulnerabilities+: converted,
      }
    ),
    with_resource_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_id+: converted,
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
    with_severity_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        severity+: converted,
      }
    ),
    with_title_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        title+: converted,
      }
    ),
    with_updated_at_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        updated_at+: converted,
      }
    ),
    with_vendor_severity_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vendor_severity+: converted,
      }
    ),
    with_vulnerability_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerability_id+: converted,
      }
    ),
    with_vulnerability_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerability_source+: converted,
      }
    ),
    with_vulnerable_packages_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerable_packages+: converted,
      }
    ),
  },
  with_filter_criteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_criteria: value,
    }
  ),
  with_filter_criteria_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_criteria+: converted,
    }
  ),
}
