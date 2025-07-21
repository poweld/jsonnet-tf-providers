{
  local block = self,
  new(bucket, role):: (
    {}
    + block.with_bucket(bucket)
    + block.with_role(role)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
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
  with_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  with_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"token" expected to be of type "string"';
    {
      token: converted,
    }
  ),
  rule:: {
    local block = self,
    new(status):: (
      {}
      + block.with_status(status)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    delete_marker_replication:: {
      local block = self,
      new(status):: (
        {}
        + block.with_status(status)
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    destination:: {
      local block = self,
      new(bucket):: (
        {}
        + block.with_bucket(bucket)
      ),
      with_account(value):: (
        local converted = value;
        assert std.isString(converted) : '"account" expected to be of type "string"';
        {
          account: converted,
        }
      ),
      with_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      with_storage_class(value):: (
        local converted = value;
        assert std.isString(converted) : '"storage_class" expected to be of type "string"';
        {
          storage_class: converted,
        }
      ),
      access_control_translation:: {
        local block = self,
        new(owner):: (
          {}
          + block.with_owner(owner)
        ),
        with_owner(value):: (
          local converted = value;
          assert std.isString(converted) : '"owner" expected to be of type "string"';
          {
            owner: converted,
          }
        ),
      },
      encryption_configuration:: {
        local block = self,
        new(replica_kms_key_id):: (
          {}
          + block.with_replica_kms_key_id(replica_kms_key_id)
        ),
        with_replica_kms_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"replica_kms_key_id" expected to be of type "string"';
          {
            replica_kms_key_id: converted,
          }
        ),
      },
      metrics:: {
        local block = self,
        new(status):: (
          {}
          + block.with_status(status)
        ),
        with_status(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
        event_threshold:: {
          local block = self,
          new(minutes):: (
            {}
            + block.with_minutes(minutes)
          ),
          with_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
            {
              minutes: converted,
            }
          ),
        },
        with_event_threshold(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            event_threshold: value,
          }
        ),
        with_event_threshold_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            event_threshold+: converted,
          }
        ),
      },
      replication_time:: {
        local block = self,
        new(status):: (
          {}
          + block.with_status(status)
        ),
        with_status(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
        time:: {
          local block = self,
          new(minutes):: (
            {}
            + block.with_minutes(minutes)
          ),
          with_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
            {
              minutes: converted,
            }
          ),
        },
        with_time(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            time: value,
          }
        ),
        with_time_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            time+: converted,
          }
        ),
      },
      with_access_control_translation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_control_translation: value,
        }
      ),
      with_encryption_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration: value,
        }
      ),
      with_metrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metrics: value,
        }
      ),
      with_replication_time(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          replication_time: value,
        }
      ),
      with_access_control_translation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_control_translation+: converted,
        }
      ),
      with_encryption_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration+: converted,
        }
      ),
      with_metrics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metrics+: converted,
        }
      ),
      with_replication_time_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          replication_time+: converted,
        }
      ),
    },
    existing_object_replication:: {
      local block = self,
      new(status):: (
        {}
        + block.with_status(status)
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    filter:: {
      local block = self,
      new():: (
        {}
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      and:: {
        local block = self,
        new():: (
          {}
        ),
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        with_tags(value):: (
          local converted = value;
          assert std.isObject(converted) : '"tags" expected to be of type "map"';
          {
            tags: converted,
          }
        ),
      },
      tag:: {
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
      with_and(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          and: value,
        }
      ),
      with_tag(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag: value,
        }
      ),
      with_and_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          and+: converted,
        }
      ),
      with_tag_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag+: converted,
        }
      ),
    },
    source_selection_criteria:: {
      local block = self,
      new():: (
        {}
      ),
      replica_modifications:: {
        local block = self,
        new(status):: (
          {}
          + block.with_status(status)
        ),
        with_status(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      sse_kms_encrypted_objects:: {
        local block = self,
        new(status):: (
          {}
          + block.with_status(status)
        ),
        with_status(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      with_replica_modifications(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          replica_modifications: value,
        }
      ),
      with_sse_kms_encrypted_objects(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sse_kms_encrypted_objects: value,
        }
      ),
      with_replica_modifications_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          replica_modifications+: converted,
        }
      ),
      with_sse_kms_encrypted_objects_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sse_kms_encrypted_objects+: converted,
        }
      ),
    },
    with_delete_marker_replication(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_marker_replication: value,
      }
    ),
    with_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination: value,
      }
    ),
    with_existing_object_replication(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        existing_object_replication: value,
      }
    ),
    with_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    with_source_selection_criteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_selection_criteria: value,
      }
    ),
    with_delete_marker_replication_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_marker_replication+: converted,
      }
    ),
    with_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination+: converted,
      }
    ),
    with_existing_object_replication_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        existing_object_replication+: converted,
      }
    ),
    with_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
    with_source_selection_criteria_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_selection_criteria+: converted,
      }
    ),
  },
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
