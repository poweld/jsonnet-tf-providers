{
  local block = self,
  new(data_access_role_arn, language_code, name):: (
    {}
    + block.with_data_access_role_arn(data_access_role_arn)
    + block.with_language_code(language_code)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_data_access_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_access_role_arn" expected to be of type "string"';
    {
      data_access_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_language_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
    }
  ),
  with_model_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_kms_key_id" expected to be of type "string"';
    {
      model_kms_key_id: converted,
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
  with_version_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_name" expected to be of type "string"';
    {
      version_name: converted,
    }
  ),
  with_version_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_name_prefix" expected to be of type "string"';
    {
      version_name_prefix: converted,
    }
  ),
  with_volume_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_kms_key_id" expected to be of type "string"';
    {
      volume_kms_key_id: converted,
    }
  ),
  input_data_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_data_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_format" expected to be of type "string"';
      {
        data_format: converted,
      }
    ),
    annotations:: {
      local block = self,
      new(s3_uri):: (
        {}
        + block.with_s3_uri(s3_uri)
      ),
      with_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
      with_test_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"test_s3_uri" expected to be of type "string"';
        {
          test_s3_uri: converted,
        }
      ),
    },
    augmented_manifests:: {
      local block = self,
      new(attribute_names, s3_uri):: (
        {}
        + block.with_attribute_names(attribute_names)
        + block.with_s3_uri(s3_uri)
      ),
      with_annotation_data_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"annotation_data_s3_uri" expected to be of type "string"';
        {
          annotation_data_s3_uri: converted,
        }
      ),
      with_attribute_names(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"attribute_names" expected to be of type "list"';
        {
          attribute_names: converted,
        }
      ),
      with_attribute_names_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"attribute_names" expected to be of type "list"';
        {
          attribute_names+: converted,
        }
      ),
      with_document_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_type" expected to be of type "string"';
        {
          document_type: converted,
        }
      ),
      with_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
      with_source_documents_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_documents_s3_uri" expected to be of type "string"';
        {
          source_documents_s3_uri: converted,
        }
      ),
      with_split(value):: (
        local converted = value;
        assert std.isString(converted) : '"split" expected to be of type "string"';
        {
          split: converted,
        }
      ),
    },
    documents:: {
      local block = self,
      new(s3_uri):: (
        {}
        + block.with_s3_uri(s3_uri)
      ),
      with_input_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_format" expected to be of type "string"';
        {
          input_format: converted,
        }
      ),
      with_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
      with_test_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"test_s3_uri" expected to be of type "string"';
        {
          test_s3_uri: converted,
        }
      ),
    },
    entity_list:: {
      local block = self,
      new(s3_uri):: (
        {}
        + block.with_s3_uri(s3_uri)
      ),
      with_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    entity_types:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_annotations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        annotations: value,
      }
    ),
    with_augmented_manifests(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        augmented_manifests: value,
      }
    ),
    with_documents(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        documents: value,
      }
    ),
    with_entity_list(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        entity_list: value,
      }
    ),
    with_entity_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        entity_types: value,
      }
    ),
    with_annotations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        annotations+: converted,
      }
    ),
    with_augmented_manifests_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        augmented_manifests+: converted,
      }
    ),
    with_documents_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        documents+: converted,
      }
    ),
    with_entity_list_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        entity_list+: converted,
      }
    ),
    with_entity_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        entity_types+: converted,
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
  vpc_config:: {
    local block = self,
    new(security_group_ids, subnets):: (
      {}
      + block.with_security_group_ids(security_group_ids)
      + block.with_subnets(subnets)
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    with_subnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    with_subnets_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
  },
  with_input_data_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_data_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_input_data_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_data_config+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
