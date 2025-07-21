{
  local block = self,
  new(provisioned_memory):: (
    {}
    + block.with_provisioned_memory(provisioned_memory)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  '#with_deletion_protection':: "A value that indicates whether the graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.",
  with_deletion_protection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection" expected to be of type "bool"';
    {
      deletion_protection: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  '#with_graph_name':: "The graph name. For example: my-graph-1. \t\t\t\t\t\t\t\tThe name must contain from 1 to 63 letters, numbers, or hyphens,  \t\t\t\t\t\t\t\tand its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. \t\t\t\t\t\t\t\tIf you don't specify a graph name, a unique graph name is generated for you using the prefix graph-for,  \t\t\t\t\t\t\t\tfollowed by a combination of Stack Name and a UUID.",
  with_graph_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"graph_name" expected to be of type "string"';
    {
      graph_name: converted,
    }
  ),
  '#with_graph_name_prefix':: 'Allows user to specify name prefix and have remainder of name automatically generated.',
  with_graph_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"graph_name_prefix" expected to be of type "string"';
    {
      graph_name_prefix: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_kms_key_identifier':: 'Specifies a KMS key to use to encrypt data in the new graph.  Value must be ARN of KMS Key.',
  with_kms_key_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
    }
  ),
  '#with_provisioned_memory':: 'The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.',
  with_provisioned_memory(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provisioned_memory" expected to be of type "number"';
    {
      provisioned_memory: converted,
    }
  ),
  '#with_public_connectivity':: "Specifies whether or not the graph can be reachable over the internet.  \t\t\t\t\t\t\t\tAll access to graphs is IAM authenticated. \t\t\t\t\t\t\t\tWhen the graph is publicly available, its domain name system (DNS) endpoint resolves to  \t\t\t\t\t\t\t\tthe public IP address from the internet. When the graph isn't publicly available, you need  \t\t\t\t\t\t\t\tto create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private  \t\t\t\t\t\t\t\tIP address that is reachable from the VPC.",
  with_public_connectivity(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"public_connectivity" expected to be of type "bool"';
    {
      public_connectivity: converted,
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
  '#with_replica_count':: 'The number of replicas in other AZs.  Value must be between 0 and 2.',
  with_replica_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"replica_count" expected to be of type "number"';
    {
      replica_count: converted,
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
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  vector_search_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_vector_search_dimension':: 'Specifies the number of dimensions for vector embeddings.  Value must be between 1 and 65,535.',
    with_vector_search_dimension(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"vector_search_dimension" expected to be of type "number"';
      {
        vector_search_dimension: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vector_search_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vector_search_configuration: value,
    }
  ),
  with_vector_search_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vector_search_configuration+: converted,
    }
  ),
}
