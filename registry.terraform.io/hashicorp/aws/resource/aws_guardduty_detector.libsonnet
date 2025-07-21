{
  local block = self,
  new():: (
    {}
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_enable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
    {
      enable: converted,
    }
  ),
  with_finding_publishing_frequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"finding_publishing_frequency" expected to be of type "string"';
    {
      finding_publishing_frequency: converted,
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
