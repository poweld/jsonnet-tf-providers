{
  local block = self,
  new(endpoint_id):: (
    {}
    + block.with_endpoint_id(endpoint_id)
  ),
  with_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_elasticsearch_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"elasticsearch_settings" expected to be of type "list"';
    {
      elasticsearch_settings: converted,
    }
  ),
  with_elasticsearch_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"elasticsearch_settings" expected to be of type "list"';
    {
      elasticsearch_settings+: converted,
    }
  ),
  with_endpoint_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_arn" expected to be of type "string"';
    {
      endpoint_arn: converted,
    }
  ),
  with_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
    {
      endpoint_id: converted,
    }
  ),
  with_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  with_engine_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_name" expected to be of type "string"';
    {
      engine_name: converted,
    }
  ),
  with_extra_connection_attributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"extra_connection_attributes" expected to be of type "string"';
    {
      extra_connection_attributes: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kafka_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"kafka_settings" expected to be of type "list"';
    {
      kafka_settings: converted,
    }
  ),
  with_kafka_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"kafka_settings" expected to be of type "list"';
    {
      kafka_settings+: converted,
    }
  ),
  with_kinesis_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"kinesis_settings" expected to be of type "list"';
    {
      kinesis_settings: converted,
    }
  ),
  with_kinesis_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"kinesis_settings" expected to be of type "list"';
    {
      kinesis_settings+: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_mongodb_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"mongodb_settings" expected to be of type "list"';
    {
      mongodb_settings: converted,
    }
  ),
  with_mongodb_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"mongodb_settings" expected to be of type "list"';
    {
      mongodb_settings+: converted,
    }
  ),
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  with_postgres_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"postgres_settings" expected to be of type "list"';
    {
      postgres_settings: converted,
    }
  ),
  with_postgres_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"postgres_settings" expected to be of type "list"';
    {
      postgres_settings+: converted,
    }
  ),
  with_redis_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"redis_settings" expected to be of type "list"';
    {
      redis_settings: converted,
    }
  ),
  with_redis_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"redis_settings" expected to be of type "list"';
    {
      redis_settings+: converted,
    }
  ),
  with_redshift_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"redshift_settings" expected to be of type "list"';
    {
      redshift_settings: converted,
    }
  ),
  with_redshift_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"redshift_settings" expected to be of type "list"';
    {
      redshift_settings+: converted,
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
  with_s3_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"s3_settings" expected to be of type "list"';
    {
      s3_settings: converted,
    }
  ),
  with_s3_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"s3_settings" expected to be of type "list"';
    {
      s3_settings+: converted,
    }
  ),
  with_secrets_manager_access_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secrets_manager_access_role_arn" expected to be of type "string"';
    {
      secrets_manager_access_role_arn: converted,
    }
  ),
  with_secrets_manager_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secrets_manager_arn" expected to be of type "string"';
    {
      secrets_manager_arn: converted,
    }
  ),
  with_server_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_name" expected to be of type "string"';
    {
      server_name: converted,
    }
  ),
  with_service_access_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_access_role" expected to be of type "string"';
    {
      service_access_role: converted,
    }
  ),
  with_ssl_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssl_mode" expected to be of type "string"';
    {
      ssl_mode: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
}
