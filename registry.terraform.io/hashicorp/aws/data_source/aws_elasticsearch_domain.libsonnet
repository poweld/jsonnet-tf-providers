{
  local block = self,
  new(domain_name):: (
    {}
    + block.with_domain_name(domain_name)
  ),
  with_access_policies(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_policies" expected to be of type "string"';
    {
      access_policies: converted,
    }
  ),
  with_advanced_options(value):: (
    local converted = value;
    assert std.isObject(converted) : '"advanced_options" expected to be of type "map"';
    {
      advanced_options: converted,
    }
  ),
  with_advanced_security_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"advanced_security_options" expected to be of type "list"';
    {
      advanced_security_options: converted,
    }
  ),
  with_advanced_security_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"advanced_security_options" expected to be of type "list"';
    {
      advanced_security_options+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_tune_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"auto_tune_options" expected to be of type "list"';
    {
      auto_tune_options: converted,
    }
  ),
  with_auto_tune_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"auto_tune_options" expected to be of type "list"';
    {
      auto_tune_options+: converted,
    }
  ),
  with_cluster_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_config" expected to be of type "list"';
    {
      cluster_config: converted,
    }
  ),
  with_cluster_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_config" expected to be of type "list"';
    {
      cluster_config+: converted,
    }
  ),
  with_cognito_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cognito_options" expected to be of type "list"';
    {
      cognito_options: converted,
    }
  ),
  with_cognito_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cognito_options" expected to be of type "list"';
    {
      cognito_options+: converted,
    }
  ),
  with_created(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"created" expected to be of type "bool"';
    {
      created: converted,
    }
  ),
  with_deleted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deleted" expected to be of type "bool"';
    {
      deleted: converted,
    }
  ),
  with_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_ebs_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ebs_options" expected to be of type "list"';
    {
      ebs_options: converted,
    }
  ),
  with_ebs_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ebs_options" expected to be of type "list"';
    {
      ebs_options+: converted,
    }
  ),
  with_elasticsearch_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"elasticsearch_version" expected to be of type "string"';
    {
      elasticsearch_version: converted,
    }
  ),
  with_encryption_at_rest(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_at_rest" expected to be of type "list"';
    {
      encryption_at_rest: converted,
    }
  ),
  with_encryption_at_rest_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_at_rest" expected to be of type "list"';
    {
      encryption_at_rest+: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kibana_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"kibana_endpoint" expected to be of type "string"';
    {
      kibana_endpoint: converted,
    }
  ),
  with_log_publishing_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_publishing_options" expected to be of type "set"';
    {
      log_publishing_options: converted,
    }
  ),
  with_log_publishing_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_publishing_options" expected to be of type "set"';
    {
      log_publishing_options+: converted,
    }
  ),
  with_node_to_node_encryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"node_to_node_encryption" expected to be of type "list"';
    {
      node_to_node_encryption: converted,
    }
  ),
  with_node_to_node_encryption_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"node_to_node_encryption" expected to be of type "list"';
    {
      node_to_node_encryption+: converted,
    }
  ),
  with_processing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"processing" expected to be of type "bool"';
    {
      processing: converted,
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
  with_snapshot_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"snapshot_options" expected to be of type "list"';
    {
      snapshot_options: converted,
    }
  ),
  with_snapshot_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"snapshot_options" expected to be of type "list"';
    {
      snapshot_options+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_vpc_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_options" expected to be of type "list"';
    {
      vpc_options: converted,
    }
  ),
  with_vpc_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_options" expected to be of type "list"';
    {
      vpc_options+: converted,
    }
  ),
}
