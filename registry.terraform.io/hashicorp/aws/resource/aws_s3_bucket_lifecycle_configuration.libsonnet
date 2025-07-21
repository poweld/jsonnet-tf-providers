{
  local block = self,
  new(bucket):: (
    {}
    + block.with_bucket(bucket)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_expected_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
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
  with_transition_default_minimum_object_size(value):: (
    local converted = value;
    assert std.isString(converted) : '"transition_default_minimum_object_size" expected to be of type "string"';
    {
      transition_default_minimum_object_size: converted,
    }
  ),
  rule:: {
    local block = self,
    new(id, status):: (
      {}
      + block.with_id(id)
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
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    abort_incomplete_multipart_upload:: {
      local block = self,
      new():: (
        {}
      ),
      with_days_after_initiation(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days_after_initiation" expected to be of type "number"';
        {
          days_after_initiation: converted,
        }
      ),
    },
    expiration:: {
      local block = self,
      new():: (
        {}
      ),
      with_date(value):: (
        local converted = value;
        assert std.isString(converted) : '"date" expected to be of type "string"';
        {
          date: converted,
        }
      ),
      with_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      with_expired_object_delete_marker(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"expired_object_delete_marker" expected to be of type "bool"';
        {
          expired_object_delete_marker: converted,
        }
      ),
    },
    filter:: {
      local block = self,
      new():: (
        {}
      ),
      with_object_size_greater_than(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"object_size_greater_than" expected to be of type "number"';
        {
          object_size_greater_than: converted,
        }
      ),
      with_object_size_less_than(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"object_size_less_than" expected to be of type "number"';
        {
          object_size_less_than: converted,
        }
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
        with_object_size_greater_than(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"object_size_greater_than" expected to be of type "number"';
          {
            object_size_greater_than: converted,
          }
        ),
        with_object_size_less_than(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"object_size_less_than" expected to be of type "number"';
          {
            object_size_less_than: converted,
          }
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
    noncurrent_version_expiration:: {
      local block = self,
      new(noncurrent_days):: (
        {}
        + block.with_noncurrent_days(noncurrent_days)
      ),
      with_newer_noncurrent_versions(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"newer_noncurrent_versions" expected to be of type "number"';
        {
          newer_noncurrent_versions: converted,
        }
      ),
      with_noncurrent_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"noncurrent_days" expected to be of type "number"';
        {
          noncurrent_days: converted,
        }
      ),
    },
    noncurrent_version_transition:: {
      local block = self,
      new(noncurrent_days, storage_class):: (
        {}
        + block.with_noncurrent_days(noncurrent_days)
        + block.with_storage_class(storage_class)
      ),
      with_newer_noncurrent_versions(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"newer_noncurrent_versions" expected to be of type "number"';
        {
          newer_noncurrent_versions: converted,
        }
      ),
      with_noncurrent_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"noncurrent_days" expected to be of type "number"';
        {
          noncurrent_days: converted,
        }
      ),
      with_storage_class(value):: (
        local converted = value;
        assert std.isString(converted) : '"storage_class" expected to be of type "string"';
        {
          storage_class: converted,
        }
      ),
    },
    transition:: {
      local block = self,
      new(storage_class):: (
        {}
        + block.with_storage_class(storage_class)
      ),
      with_date(value):: (
        local converted = value;
        assert std.isString(converted) : '"date" expected to be of type "string"';
        {
          date: converted,
        }
      ),
      with_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      with_storage_class(value):: (
        local converted = value;
        assert std.isString(converted) : '"storage_class" expected to be of type "string"';
        {
          storage_class: converted,
        }
      ),
    },
    with_abort_incomplete_multipart_upload(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        abort_incomplete_multipart_upload: value,
      }
    ),
    with_expiration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration: value,
      }
    ),
    with_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    with_noncurrent_version_expiration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_expiration: value,
      }
    ),
    with_noncurrent_version_transition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_transition: value,
      }
    ),
    with_transition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transition: value,
      }
    ),
    with_abort_incomplete_multipart_upload_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        abort_incomplete_multipart_upload+: converted,
      }
    ),
    with_expiration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration+: converted,
      }
    ),
    with_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
    with_noncurrent_version_expiration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_expiration+: converted,
      }
    ),
    with_noncurrent_version_transition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_transition+: converted,
      }
    ),
    with_transition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transition+: converted,
      }
    ),
  },
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
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
