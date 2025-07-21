{
  local block = self,
  new(iam_role, name, schedule):: (
    {}
    + block.with_iam_role(iam_role)
    + block.with_name(name)
    + block.with_schedule(schedule)
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
    {
      enable: converted,
    }
  ),
  with_end_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_time" expected to be of type "string"';
    {
      end_time: converted,
    }
  ),
  with_iam_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role" expected to be of type "string"';
    {
      iam_role: converted,
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
  with_schedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  with_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  target_action:: {
    local block = self,
    new():: (
      {}
    ),
    pause_cluster:: {
      local block = self,
      new(cluster_identifier):: (
        {}
        + block.with_cluster_identifier(cluster_identifier)
      ),
      with_cluster_identifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
        {
          cluster_identifier: converted,
        }
      ),
    },
    resize_cluster:: {
      local block = self,
      new(cluster_identifier):: (
        {}
        + block.with_cluster_identifier(cluster_identifier)
      ),
      with_classic(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"classic" expected to be of type "bool"';
        {
          classic: converted,
        }
      ),
      with_cluster_identifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
        {
          cluster_identifier: converted,
        }
      ),
      with_cluster_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_type" expected to be of type "string"';
        {
          cluster_type: converted,
        }
      ),
      with_node_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"node_type" expected to be of type "string"';
        {
          node_type: converted,
        }
      ),
      with_number_of_nodes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"number_of_nodes" expected to be of type "number"';
        {
          number_of_nodes: converted,
        }
      ),
    },
    resume_cluster:: {
      local block = self,
      new(cluster_identifier):: (
        {}
        + block.with_cluster_identifier(cluster_identifier)
      ),
      with_cluster_identifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
        {
          cluster_identifier: converted,
        }
      ),
    },
    with_pause_cluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pause_cluster: value,
      }
    ),
    with_resize_cluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resize_cluster: value,
      }
    ),
    with_resume_cluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resume_cluster: value,
      }
    ),
    with_pause_cluster_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pause_cluster+: converted,
      }
    ),
    with_resize_cluster_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resize_cluster+: converted,
      }
    ),
    with_resume_cluster_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resume_cluster+: converted,
      }
    ),
  },
  with_target_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_action: value,
    }
  ),
  with_target_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_action+: converted,
    }
  ),
}
