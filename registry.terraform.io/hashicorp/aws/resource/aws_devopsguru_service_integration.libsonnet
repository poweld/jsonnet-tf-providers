{
  local block = self,
  new():: (
    {}
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
  kms_server_side_encryption:: {
    local block = self,
    new():: (
      {}
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    with_opt_in_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"opt_in_status" expected to be of type "string"';
      {
        opt_in_status: converted,
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
  logs_anomaly_detection:: {
    local block = self,
    new():: (
      {}
    ),
    with_opt_in_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"opt_in_status" expected to be of type "string"';
      {
        opt_in_status: converted,
      }
    ),
  },
  ops_center:: {
    local block = self,
    new():: (
      {}
    ),
    with_opt_in_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"opt_in_status" expected to be of type "string"';
      {
        opt_in_status: converted,
      }
    ),
  },
  with_kms_server_side_encryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kms_server_side_encryption: value,
    }
  ),
  with_logs_anomaly_detection(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs_anomaly_detection: value,
    }
  ),
  with_ops_center(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ops_center: value,
    }
  ),
  with_kms_server_side_encryption_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kms_server_side_encryption+: converted,
    }
  ),
  with_logs_anomaly_detection_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs_anomaly_detection+: converted,
    }
  ),
  with_ops_center_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ops_center+: converted,
    }
  ),
}
