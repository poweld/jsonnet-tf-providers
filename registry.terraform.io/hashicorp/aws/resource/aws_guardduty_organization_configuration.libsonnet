{
  local block = self,
  new(auto_enable_organization_members, detector_id):: (
    {}
    + block.with_auto_enable_organization_members(auto_enable_organization_members)
    + block.with_detector_id(detector_id)
  ),
  with_auto_enable_organization_members(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_enable_organization_members" expected to be of type "string"';
    {
      auto_enable_organization_members: converted,
    }
  ),
  with_detector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  datasources:: {
    local block = self,
    new():: (
      {}
    ),
    kubernetes:: {
      local block = self,
      new():: (
        {}
      ),
      audit_logs:: {
        local block = self,
        new(enable):: (
          {}
          + block.with_enable(enable)
        ),
        with_enable(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
          {
            enable: converted,
          }
        ),
      },
      with_audit_logs(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audit_logs: value,
        }
      ),
      with_audit_logs_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audit_logs+: converted,
        }
      ),
    },
    malware_protection:: {
      local block = self,
      new():: (
        {}
      ),
      scan_ec2_instance_with_findings:: {
        local block = self,
        new():: (
          {}
        ),
        ebs_volumes:: {
          local block = self,
          new(auto_enable):: (
            {}
            + block.with_auto_enable(auto_enable)
          ),
          with_auto_enable(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"auto_enable" expected to be of type "bool"';
            {
              auto_enable: converted,
            }
          ),
        },
        with_ebs_volumes(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ebs_volumes: value,
          }
        ),
        with_ebs_volumes_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ebs_volumes+: converted,
          }
        ),
      },
      with_scan_ec2_instance_with_findings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scan_ec2_instance_with_findings: value,
        }
      ),
      with_scan_ec2_instance_with_findings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scan_ec2_instance_with_findings+: converted,
        }
      ),
    },
    s3_logs:: {
      local block = self,
      new(auto_enable):: (
        {}
        + block.with_auto_enable(auto_enable)
      ),
      with_auto_enable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"auto_enable" expected to be of type "bool"';
        {
          auto_enable: converted,
        }
      ),
    },
    with_kubernetes(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kubernetes: value,
      }
    ),
    with_malware_protection(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_protection: value,
      }
    ),
    with_s3_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs: value,
      }
    ),
    with_kubernetes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kubernetes+: converted,
      }
    ),
    with_malware_protection_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_protection+: converted,
      }
    ),
    with_s3_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs+: converted,
      }
    ),
  },
  with_datasources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      datasources: value,
    }
  ),
  with_datasources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      datasources+: converted,
    }
  ),
}
