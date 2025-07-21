{
  local block = self,
  new():: (
    {}
  ),
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones+: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_class" expected to be of type "string"';
    {
      instance_class: converted,
    }
  ),
  with_license_model(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_model" expected to be of type "string"';
    {
      license_model: converted,
    }
  ),
  with_max_iops_per_db_instance(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_iops_per_db_instance" expected to be of type "number"';
    {
      max_iops_per_db_instance: converted,
    }
  ),
  with_max_iops_per_gib(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_iops_per_gib" expected to be of type "number"';
    {
      max_iops_per_gib: converted,
    }
  ),
  with_max_storage_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_storage_size" expected to be of type "number"';
    {
      max_storage_size: converted,
    }
  ),
  with_min_iops_per_db_instance(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_iops_per_db_instance" expected to be of type "number"';
    {
      min_iops_per_db_instance: converted,
    }
  ),
  with_min_iops_per_gib(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_iops_per_gib" expected to be of type "number"';
    {
      min_iops_per_gib: converted,
    }
  ),
  with_min_storage_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_storage_size" expected to be of type "number"';
    {
      min_storage_size: converted,
    }
  ),
  with_multi_az_capable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az_capable" expected to be of type "bool"';
    {
      multi_az_capable: converted,
    }
  ),
  with_preferred_instance_classes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_instance_classes" expected to be of type "list"';
    {
      preferred_instance_classes: converted,
    }
  ),
  with_preferred_instance_classes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_instance_classes" expected to be of type "list"';
    {
      preferred_instance_classes+: converted,
    }
  ),
  with_read_replica_capable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"read_replica_capable" expected to be of type "bool"';
    {
      read_replica_capable: converted,
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
  with_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
    }
  ),
  with_supports_enhanced_monitoring(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_enhanced_monitoring" expected to be of type "bool"';
    {
      supports_enhanced_monitoring: converted,
    }
  ),
  with_supports_iam_database_authentication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_iam_database_authentication" expected to be of type "bool"';
    {
      supports_iam_database_authentication: converted,
    }
  ),
  with_supports_iops(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_iops" expected to be of type "bool"';
    {
      supports_iops: converted,
    }
  ),
  with_supports_performance_insights(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_performance_insights" expected to be of type "bool"';
    {
      supports_performance_insights: converted,
    }
  ),
  with_supports_storage_encryption(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_storage_encryption" expected to be of type "bool"';
    {
      supports_storage_encryption: converted,
    }
  ),
  with_vpc(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"vpc" expected to be of type "bool"';
    {
      vpc: converted,
    }
  ),
}
