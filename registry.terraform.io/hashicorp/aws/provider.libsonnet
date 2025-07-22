{
  version:: '~> 6.3.0',
  local block = self,
  new():: (
    {}
  ),
  '#with_access_key':: "The access key for API operations. You can retrieve this from the 'Security & Credentials' section of the AWS console.",
  with_access_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_key" expected to be of type "string"';
    {
      access_key: converted,
    }
  ),
  with_allowed_account_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_account_ids" expected to be of type "set"';
    {
      allowed_account_ids: converted,
    }
  ),
  with_allowed_account_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_account_ids" expected to be of type "set"';
    {
      allowed_account_ids+: converted,
    }
  ),
  '#with_custom_ca_bundle':: 'File containing custom root and intermediate certificates. Can also be configured using the `AWS_CA_BUNDLE` environment variable. (Setting `ca_bundle` in the shared config file is not supported.)',
  with_custom_ca_bundle(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_ca_bundle" expected to be of type "string"';
    {
      custom_ca_bundle: converted,
    }
  ),
  '#with_ec2_metadata_service_endpoint':: 'Address of the EC2 metadata service endpoint to use. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT` environment variable.',
  with_ec2_metadata_service_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"ec2_metadata_service_endpoint" expected to be of type "string"';
    {
      ec2_metadata_service_endpoint: converted,
    }
  ),
  '#with_ec2_metadata_service_endpoint_mode':: 'Protocol to use with EC2 metadata service endpoint.Valid values are `IPv4` and `IPv6`. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE` environment variable.',
  with_ec2_metadata_service_endpoint_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ec2_metadata_service_endpoint_mode" expected to be of type "string"';
    {
      ec2_metadata_service_endpoint_mode: converted,
    }
  ),
  with_forbidden_account_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"forbidden_account_ids" expected to be of type "set"';
    {
      forbidden_account_ids: converted,
    }
  ),
  with_forbidden_account_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"forbidden_account_ids" expected to be of type "set"';
    {
      forbidden_account_ids+: converted,
    }
  ),
  '#with_http_proxy':: 'URL of a proxy to use for HTTP requests when accessing the AWS API. Can also be set using the `HTTP_PROXY` or `http_proxy` environment variables.',
  with_http_proxy(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_proxy" expected to be of type "string"';
    {
      http_proxy: converted,
    }
  ),
  '#with_https_proxy':: 'URL of a proxy to use for HTTPS requests when accessing the AWS API. Can also be set using the `HTTPS_PROXY` or `https_proxy` environment variables.',
  with_https_proxy(value):: (
    local converted = value;
    assert std.isString(converted) : '"https_proxy" expected to be of type "string"';
    {
      https_proxy: converted,
    }
  ),
  '#with_insecure':: "Explicitly allow the provider to perform 'insecure' SSL requests. If omitted, default value is `false`",
  with_insecure(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"insecure" expected to be of type "bool"';
    {
      insecure: converted,
    }
  ),
  '#with_max_retries':: 'The maximum number of times an AWS API request is being executed. If the API request still fails, an error is thrown.',
  with_max_retries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
    {
      max_retries: converted,
    }
  ),
  '#with_no_proxy':: 'Comma-separated list of hosts that should not use HTTP or HTTPS proxies. Can also be set using the `NO_PROXY` or `no_proxy` environment variables.',
  with_no_proxy(value):: (
    local converted = value;
    assert std.isString(converted) : '"no_proxy" expected to be of type "string"';
    {
      no_proxy: converted,
    }
  ),
  '#with_profile':: 'The profile for API operations. If not set, the default profile created with `aws configure` will be used.',
  with_profile(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile" expected to be of type "string"';
    {
      profile: converted,
    }
  ),
  '#with_region':: 'The region where AWS operations will take place. Examples are us-east-1, us-west-2, etc.',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  '#with_retry_mode':: 'Specifies how retries are attempted. Valid values are `standard` and `adaptive`. Can also be configured using the `AWS_RETRY_MODE` environment variable.',
  with_retry_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"retry_mode" expected to be of type "string"';
    {
      retry_mode: converted,
    }
  ),
  '#with_s3_us_east_1_regional_endpoint':: 'Specifies whether S3 API calls in the `us-east-1` region use the legacy global endpoint or a regional endpoint. Valid values are `legacy` or `regional`. Can also be configured using the `AWS_S3_US_EAST_1_REGIONAL_ENDPOINT` environment variable or the `s3_us_east_1_regional_endpoint` shared config file parameter',
  with_s3_us_east_1_regional_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_us_east_1_regional_endpoint" expected to be of type "string"';
    {
      s3_us_east_1_regional_endpoint: converted,
    }
  ),
  '#with_s3_use_path_style':: 'Set this to true to enable the request to use path-style addressing, i.e., https://s3.amazonaws.com/BUCKET/KEY. By default, the S3 client will use virtual hosted bucket addressing when possible (https://BUCKET.s3.amazonaws.com/KEY). Specific to the Amazon S3 service.',
  with_s3_use_path_style(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"s3_use_path_style" expected to be of type "bool"';
    {
      s3_use_path_style: converted,
    }
  ),
  '#with_secret_key':: "The secret key for API operations. You can retrieve this from the 'Security & Credentials' section of the AWS console.",
  with_secret_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_key" expected to be of type "string"';
    {
      secret_key: converted,
    }
  ),
  '#with_shared_config_files':: 'List of paths to shared config files. If not set, defaults to [~/.aws/config].',
  with_shared_config_files(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"shared_config_files" expected to be of type "list"';
    {
      shared_config_files: converted,
    }
  ),
  '#with_shared_config_files_mixin':: 'List of paths to shared config files. If not set, defaults to [~/.aws/config].',
  with_shared_config_files_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"shared_config_files" expected to be of type "list"';
    {
      shared_config_files+: converted,
    }
  ),
  '#with_shared_credentials_files':: 'List of paths to shared credentials files. If not set, defaults to [~/.aws/credentials].',
  with_shared_credentials_files(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"shared_credentials_files" expected to be of type "list"';
    {
      shared_credentials_files: converted,
    }
  ),
  '#with_shared_credentials_files_mixin':: 'List of paths to shared credentials files. If not set, defaults to [~/.aws/credentials].',
  with_shared_credentials_files_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"shared_credentials_files" expected to be of type "list"';
    {
      shared_credentials_files+: converted,
    }
  ),
  '#with_skip_credentials_validation':: 'Skip the credentials validation via STS API. Used for AWS API implementations that do not have STS available/implemented.',
  with_skip_credentials_validation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_credentials_validation" expected to be of type "bool"';
    {
      skip_credentials_validation: converted,
    }
  ),
  '#with_skip_metadata_api_check':: 'Skip the AWS Metadata API check. Used for AWS API implementations that do not have a metadata api endpoint.',
  with_skip_metadata_api_check(value):: (
    local converted = value;
    assert std.isString(converted) : '"skip_metadata_api_check" expected to be of type "string"';
    {
      skip_metadata_api_check: converted,
    }
  ),
  '#with_skip_region_validation':: 'Skip static validation of region name. Used by users of alternative AWS-like APIs or users w/ access to regions that are not public (yet).',
  with_skip_region_validation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_region_validation" expected to be of type "bool"';
    {
      skip_region_validation: converted,
    }
  ),
  '#with_skip_requesting_account_id':: 'Skip requesting the account ID. Used for AWS API implementations that do not have IAM/STS API and/or metadata API.',
  with_skip_requesting_account_id(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_requesting_account_id" expected to be of type "bool"';
    {
      skip_requesting_account_id: converted,
    }
  ),
  '#with_sts_region':: 'The region where AWS STS operations will take place. Examples are us-east-1 and us-west-2.',
  with_sts_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"sts_region" expected to be of type "string"';
    {
      sts_region: converted,
    }
  ),
  '#with_token':: 'session token. A session token is only required if you are using temporary security credentials.',
  with_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"token" expected to be of type "string"';
    {
      token: converted,
    }
  ),
  '#with_token_bucket_rate_limiter_capacity':: "The capacity of the AWS SDK's token bucket rate limiter.",
  with_token_bucket_rate_limiter_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"token_bucket_rate_limiter_capacity" expected to be of type "number"';
    {
      token_bucket_rate_limiter_capacity: converted,
    }
  ),
  '#with_use_dualstack_endpoint':: 'Resolve an endpoint with DualStack capability',
  with_use_dualstack_endpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_dualstack_endpoint" expected to be of type "bool"';
    {
      use_dualstack_endpoint: converted,
    }
  ),
  '#with_use_fips_endpoint':: 'Resolve an endpoint with FIPS capability',
  with_use_fips_endpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_fips_endpoint" expected to be of type "bool"';
    {
      use_fips_endpoint: converted,
    }
  ),
  assume_role:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_duration':: 'The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.',
    with_duration(value):: (
      local converted = value;
      assert std.isString(converted) : '"duration" expected to be of type "string"';
      {
        duration: converted,
      }
    ),
    '#with_external_id':: 'A unique identifier that might be required when you assume a role in another account.',
    with_external_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_id" expected to be of type "string"';
      {
        external_id: converted,
      }
    ),
    '#with_policy':: 'IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.',
    with_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy" expected to be of type "string"';
      {
        policy: converted,
      }
    ),
    '#with_policy_arns':: 'Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.',
    with_policy_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
      {
        policy_arns: converted,
      }
    ),
    '#with_policy_arns_mixin':: 'Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.',
    with_policy_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
      {
        policy_arns+: converted,
      }
    ),
    '#with_role_arn':: 'Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.',
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    '#with_session_name':: 'An identifier for the assumed role session.',
    with_session_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"session_name" expected to be of type "string"';
      {
        session_name: converted,
      }
    ),
    '#with_source_identity':: 'Source identity specified by the principal assuming the role.',
    with_source_identity(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_identity" expected to be of type "string"';
      {
        source_identity: converted,
      }
    ),
    '#with_tags':: 'Assume role session tags.',
    with_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    '#with_transitive_tag_keys':: 'Assume role session tag keys to pass to any subsequent sessions.',
    with_transitive_tag_keys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"transitive_tag_keys" expected to be of type "set"';
      {
        transitive_tag_keys: converted,
      }
    ),
    '#with_transitive_tag_keys_mixin':: 'Assume role session tag keys to pass to any subsequent sessions.',
    with_transitive_tag_keys_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"transitive_tag_keys" expected to be of type "set"';
      {
        transitive_tag_keys+: converted,
      }
    ),
  },
  assume_role_with_web_identity:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_duration':: 'The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.',
    with_duration(value):: (
      local converted = value;
      assert std.isString(converted) : '"duration" expected to be of type "string"';
      {
        duration: converted,
      }
    ),
    '#with_policy':: 'IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.',
    with_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy" expected to be of type "string"';
      {
        policy: converted,
      }
    ),
    '#with_policy_arns':: 'Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.',
    with_policy_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
      {
        policy_arns: converted,
      }
    ),
    '#with_policy_arns_mixin':: 'Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.',
    with_policy_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
      {
        policy_arns+: converted,
      }
    ),
    '#with_role_arn':: 'Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.',
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    '#with_session_name':: 'An identifier for the assumed role session.',
    with_session_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"session_name" expected to be of type "string"';
      {
        session_name: converted,
      }
    ),
    with_web_identity_token(value):: (
      local converted = value;
      assert std.isString(converted) : '"web_identity_token" expected to be of type "string"';
      {
        web_identity_token: converted,
      }
    ),
    with_web_identity_token_file(value):: (
      local converted = value;
      assert std.isString(converted) : '"web_identity_token_file" expected to be of type "string"';
      {
        web_identity_token_file: converted,
      }
    ),
  },
  default_tags:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_tags':: 'Resource tags to default across all resources. Can also be configured with environment variables like `TF_AWS_DEFAULT_TAGS_<tag_name>`.',
    with_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
  },
  endpoints:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_accessanalyzer':: 'Use this to override the default service endpoint URL',
    with_accessanalyzer(value):: (
      local converted = value;
      assert std.isString(converted) : '"accessanalyzer" expected to be of type "string"';
      {
        accessanalyzer: converted,
      }
    ),
    '#with_account':: 'Use this to override the default service endpoint URL',
    with_account(value):: (
      local converted = value;
      assert std.isString(converted) : '"account" expected to be of type "string"';
      {
        account: converted,
      }
    ),
    '#with_acm':: 'Use this to override the default service endpoint URL',
    with_acm(value):: (
      local converted = value;
      assert std.isString(converted) : '"acm" expected to be of type "string"';
      {
        acm: converted,
      }
    ),
    '#with_acmpca':: 'Use this to override the default service endpoint URL',
    with_acmpca(value):: (
      local converted = value;
      assert std.isString(converted) : '"acmpca" expected to be of type "string"';
      {
        acmpca: converted,
      }
    ),
    '#with_amg':: 'Use this to override the default service endpoint URL',
    with_amg(value):: (
      local converted = value;
      assert std.isString(converted) : '"amg" expected to be of type "string"';
      {
        amg: converted,
      }
    ),
    '#with_amp':: 'Use this to override the default service endpoint URL',
    with_amp(value):: (
      local converted = value;
      assert std.isString(converted) : '"amp" expected to be of type "string"';
      {
        amp: converted,
      }
    ),
    '#with_amplify':: 'Use this to override the default service endpoint URL',
    with_amplify(value):: (
      local converted = value;
      assert std.isString(converted) : '"amplify" expected to be of type "string"';
      {
        amplify: converted,
      }
    ),
    '#with_apigateway':: 'Use this to override the default service endpoint URL',
    with_apigateway(value):: (
      local converted = value;
      assert std.isString(converted) : '"apigateway" expected to be of type "string"';
      {
        apigateway: converted,
      }
    ),
    '#with_apigatewayv2':: 'Use this to override the default service endpoint URL',
    with_apigatewayv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"apigatewayv2" expected to be of type "string"';
      {
        apigatewayv2: converted,
      }
    ),
    '#with_appautoscaling':: 'Use this to override the default service endpoint URL',
    with_appautoscaling(value):: (
      local converted = value;
      assert std.isString(converted) : '"appautoscaling" expected to be of type "string"';
      {
        appautoscaling: converted,
      }
    ),
    '#with_appconfig':: 'Use this to override the default service endpoint URL',
    with_appconfig(value):: (
      local converted = value;
      assert std.isString(converted) : '"appconfig" expected to be of type "string"';
      {
        appconfig: converted,
      }
    ),
    '#with_appfabric':: 'Use this to override the default service endpoint URL',
    with_appfabric(value):: (
      local converted = value;
      assert std.isString(converted) : '"appfabric" expected to be of type "string"';
      {
        appfabric: converted,
      }
    ),
    '#with_appflow':: 'Use this to override the default service endpoint URL',
    with_appflow(value):: (
      local converted = value;
      assert std.isString(converted) : '"appflow" expected to be of type "string"';
      {
        appflow: converted,
      }
    ),
    '#with_appintegrations':: 'Use this to override the default service endpoint URL',
    with_appintegrations(value):: (
      local converted = value;
      assert std.isString(converted) : '"appintegrations" expected to be of type "string"';
      {
        appintegrations: converted,
      }
    ),
    '#with_appintegrationsservice':: 'Use this to override the default service endpoint URL',
    with_appintegrationsservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"appintegrationsservice" expected to be of type "string"';
      {
        appintegrationsservice: converted,
      }
    ),
    '#with_applicationautoscaling':: 'Use this to override the default service endpoint URL',
    with_applicationautoscaling(value):: (
      local converted = value;
      assert std.isString(converted) : '"applicationautoscaling" expected to be of type "string"';
      {
        applicationautoscaling: converted,
      }
    ),
    '#with_applicationinsights':: 'Use this to override the default service endpoint URL',
    with_applicationinsights(value):: (
      local converted = value;
      assert std.isString(converted) : '"applicationinsights" expected to be of type "string"';
      {
        applicationinsights: converted,
      }
    ),
    '#with_applicationsignals':: 'Use this to override the default service endpoint URL',
    with_applicationsignals(value):: (
      local converted = value;
      assert std.isString(converted) : '"applicationsignals" expected to be of type "string"';
      {
        applicationsignals: converted,
      }
    ),
    '#with_appmesh':: 'Use this to override the default service endpoint URL',
    with_appmesh(value):: (
      local converted = value;
      assert std.isString(converted) : '"appmesh" expected to be of type "string"';
      {
        appmesh: converted,
      }
    ),
    '#with_appregistry':: 'Use this to override the default service endpoint URL',
    with_appregistry(value):: (
      local converted = value;
      assert std.isString(converted) : '"appregistry" expected to be of type "string"';
      {
        appregistry: converted,
      }
    ),
    '#with_apprunner':: 'Use this to override the default service endpoint URL',
    with_apprunner(value):: (
      local converted = value;
      assert std.isString(converted) : '"apprunner" expected to be of type "string"';
      {
        apprunner: converted,
      }
    ),
    '#with_appstream':: 'Use this to override the default service endpoint URL',
    with_appstream(value):: (
      local converted = value;
      assert std.isString(converted) : '"appstream" expected to be of type "string"';
      {
        appstream: converted,
      }
    ),
    '#with_appsync':: 'Use this to override the default service endpoint URL',
    with_appsync(value):: (
      local converted = value;
      assert std.isString(converted) : '"appsync" expected to be of type "string"';
      {
        appsync: converted,
      }
    ),
    '#with_athena':: 'Use this to override the default service endpoint URL',
    with_athena(value):: (
      local converted = value;
      assert std.isString(converted) : '"athena" expected to be of type "string"';
      {
        athena: converted,
      }
    ),
    '#with_auditmanager':: 'Use this to override the default service endpoint URL',
    with_auditmanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"auditmanager" expected to be of type "string"';
      {
        auditmanager: converted,
      }
    ),
    '#with_autoscaling':: 'Use this to override the default service endpoint URL',
    with_autoscaling(value):: (
      local converted = value;
      assert std.isString(converted) : '"autoscaling" expected to be of type "string"';
      {
        autoscaling: converted,
      }
    ),
    '#with_autoscalingplans':: 'Use this to override the default service endpoint URL',
    with_autoscalingplans(value):: (
      local converted = value;
      assert std.isString(converted) : '"autoscalingplans" expected to be of type "string"';
      {
        autoscalingplans: converted,
      }
    ),
    '#with_backup':: 'Use this to override the default service endpoint URL',
    with_backup(value):: (
      local converted = value;
      assert std.isString(converted) : '"backup" expected to be of type "string"';
      {
        backup: converted,
      }
    ),
    '#with_batch':: 'Use this to override the default service endpoint URL',
    with_batch(value):: (
      local converted = value;
      assert std.isString(converted) : '"batch" expected to be of type "string"';
      {
        batch: converted,
      }
    ),
    '#with_bcmdataexports':: 'Use this to override the default service endpoint URL',
    with_bcmdataexports(value):: (
      local converted = value;
      assert std.isString(converted) : '"bcmdataexports" expected to be of type "string"';
      {
        bcmdataexports: converted,
      }
    ),
    '#with_beanstalk':: 'Use this to override the default service endpoint URL',
    with_beanstalk(value):: (
      local converted = value;
      assert std.isString(converted) : '"beanstalk" expected to be of type "string"';
      {
        beanstalk: converted,
      }
    ),
    '#with_bedrock':: 'Use this to override the default service endpoint URL',
    with_bedrock(value):: (
      local converted = value;
      assert std.isString(converted) : '"bedrock" expected to be of type "string"';
      {
        bedrock: converted,
      }
    ),
    '#with_bedrockagent':: 'Use this to override the default service endpoint URL',
    with_bedrockagent(value):: (
      local converted = value;
      assert std.isString(converted) : '"bedrockagent" expected to be of type "string"';
      {
        bedrockagent: converted,
      }
    ),
    '#with_billing':: 'Use this to override the default service endpoint URL',
    with_billing(value):: (
      local converted = value;
      assert std.isString(converted) : '"billing" expected to be of type "string"';
      {
        billing: converted,
      }
    ),
    '#with_budgets':: 'Use this to override the default service endpoint URL',
    with_budgets(value):: (
      local converted = value;
      assert std.isString(converted) : '"budgets" expected to be of type "string"';
      {
        budgets: converted,
      }
    ),
    '#with_ce':: 'Use this to override the default service endpoint URL',
    with_ce(value):: (
      local converted = value;
      assert std.isString(converted) : '"ce" expected to be of type "string"';
      {
        ce: converted,
      }
    ),
    '#with_chatbot':: 'Use this to override the default service endpoint URL',
    with_chatbot(value):: (
      local converted = value;
      assert std.isString(converted) : '"chatbot" expected to be of type "string"';
      {
        chatbot: converted,
      }
    ),
    '#with_chime':: 'Use this to override the default service endpoint URL',
    with_chime(value):: (
      local converted = value;
      assert std.isString(converted) : '"chime" expected to be of type "string"';
      {
        chime: converted,
      }
    ),
    '#with_chimesdkmediapipelines':: 'Use this to override the default service endpoint URL',
    with_chimesdkmediapipelines(value):: (
      local converted = value;
      assert std.isString(converted) : '"chimesdkmediapipelines" expected to be of type "string"';
      {
        chimesdkmediapipelines: converted,
      }
    ),
    '#with_chimesdkvoice':: 'Use this to override the default service endpoint URL',
    with_chimesdkvoice(value):: (
      local converted = value;
      assert std.isString(converted) : '"chimesdkvoice" expected to be of type "string"';
      {
        chimesdkvoice: converted,
      }
    ),
    '#with_cleanrooms':: 'Use this to override the default service endpoint URL',
    with_cleanrooms(value):: (
      local converted = value;
      assert std.isString(converted) : '"cleanrooms" expected to be of type "string"';
      {
        cleanrooms: converted,
      }
    ),
    '#with_cloud9':: 'Use this to override the default service endpoint URL',
    with_cloud9(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloud9" expected to be of type "string"';
      {
        cloud9: converted,
      }
    ),
    '#with_cloudcontrol':: 'Use this to override the default service endpoint URL',
    with_cloudcontrol(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudcontrol" expected to be of type "string"';
      {
        cloudcontrol: converted,
      }
    ),
    '#with_cloudcontrolapi':: 'Use this to override the default service endpoint URL',
    with_cloudcontrolapi(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudcontrolapi" expected to be of type "string"';
      {
        cloudcontrolapi: converted,
      }
    ),
    '#with_cloudformation':: 'Use this to override the default service endpoint URL',
    with_cloudformation(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudformation" expected to be of type "string"';
      {
        cloudformation: converted,
      }
    ),
    '#with_cloudfront':: 'Use this to override the default service endpoint URL',
    with_cloudfront(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudfront" expected to be of type "string"';
      {
        cloudfront: converted,
      }
    ),
    '#with_cloudfrontkeyvaluestore':: 'Use this to override the default service endpoint URL',
    with_cloudfrontkeyvaluestore(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudfrontkeyvaluestore" expected to be of type "string"';
      {
        cloudfrontkeyvaluestore: converted,
      }
    ),
    '#with_cloudhsm':: 'Use this to override the default service endpoint URL',
    with_cloudhsm(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudhsm" expected to be of type "string"';
      {
        cloudhsm: converted,
      }
    ),
    '#with_cloudhsmv2':: 'Use this to override the default service endpoint URL',
    with_cloudhsmv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudhsmv2" expected to be of type "string"';
      {
        cloudhsmv2: converted,
      }
    ),
    '#with_cloudsearch':: 'Use this to override the default service endpoint URL',
    with_cloudsearch(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudsearch" expected to be of type "string"';
      {
        cloudsearch: converted,
      }
    ),
    '#with_cloudtrail':: 'Use this to override the default service endpoint URL',
    with_cloudtrail(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudtrail" expected to be of type "string"';
      {
        cloudtrail: converted,
      }
    ),
    '#with_cloudwatch':: 'Use this to override the default service endpoint URL',
    with_cloudwatch(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch" expected to be of type "string"';
      {
        cloudwatch: converted,
      }
    ),
    '#with_cloudwatchevents':: 'Use this to override the default service endpoint URL',
    with_cloudwatchevents(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchevents" expected to be of type "string"';
      {
        cloudwatchevents: converted,
      }
    ),
    '#with_cloudwatchevidently':: 'Use this to override the default service endpoint URL',
    with_cloudwatchevidently(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchevidently" expected to be of type "string"';
      {
        cloudwatchevidently: converted,
      }
    ),
    '#with_cloudwatchlog':: 'Use this to override the default service endpoint URL',
    with_cloudwatchlog(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchlog" expected to be of type "string"';
      {
        cloudwatchlog: converted,
      }
    ),
    '#with_cloudwatchlogs':: 'Use this to override the default service endpoint URL',
    with_cloudwatchlogs(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchlogs" expected to be of type "string"';
      {
        cloudwatchlogs: converted,
      }
    ),
    '#with_cloudwatchobservabilityaccessmanager':: 'Use this to override the default service endpoint URL',
    with_cloudwatchobservabilityaccessmanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchobservabilityaccessmanager" expected to be of type "string"';
      {
        cloudwatchobservabilityaccessmanager: converted,
      }
    ),
    '#with_cloudwatchrum':: 'Use this to override the default service endpoint URL',
    with_cloudwatchrum(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchrum" expected to be of type "string"';
      {
        cloudwatchrum: converted,
      }
    ),
    '#with_codeartifact':: 'Use this to override the default service endpoint URL',
    with_codeartifact(value):: (
      local converted = value;
      assert std.isString(converted) : '"codeartifact" expected to be of type "string"';
      {
        codeartifact: converted,
      }
    ),
    '#with_codebuild':: 'Use this to override the default service endpoint URL',
    with_codebuild(value):: (
      local converted = value;
      assert std.isString(converted) : '"codebuild" expected to be of type "string"';
      {
        codebuild: converted,
      }
    ),
    '#with_codecatalyst':: 'Use this to override the default service endpoint URL',
    with_codecatalyst(value):: (
      local converted = value;
      assert std.isString(converted) : '"codecatalyst" expected to be of type "string"';
      {
        codecatalyst: converted,
      }
    ),
    '#with_codecommit':: 'Use this to override the default service endpoint URL',
    with_codecommit(value):: (
      local converted = value;
      assert std.isString(converted) : '"codecommit" expected to be of type "string"';
      {
        codecommit: converted,
      }
    ),
    '#with_codeconnections':: 'Use this to override the default service endpoint URL',
    with_codeconnections(value):: (
      local converted = value;
      assert std.isString(converted) : '"codeconnections" expected to be of type "string"';
      {
        codeconnections: converted,
      }
    ),
    '#with_codedeploy':: 'Use this to override the default service endpoint URL',
    with_codedeploy(value):: (
      local converted = value;
      assert std.isString(converted) : '"codedeploy" expected to be of type "string"';
      {
        codedeploy: converted,
      }
    ),
    '#with_codeguruprofiler':: 'Use this to override the default service endpoint URL',
    with_codeguruprofiler(value):: (
      local converted = value;
      assert std.isString(converted) : '"codeguruprofiler" expected to be of type "string"';
      {
        codeguruprofiler: converted,
      }
    ),
    '#with_codegurureviewer':: 'Use this to override the default service endpoint URL',
    with_codegurureviewer(value):: (
      local converted = value;
      assert std.isString(converted) : '"codegurureviewer" expected to be of type "string"';
      {
        codegurureviewer: converted,
      }
    ),
    '#with_codepipeline':: 'Use this to override the default service endpoint URL',
    with_codepipeline(value):: (
      local converted = value;
      assert std.isString(converted) : '"codepipeline" expected to be of type "string"';
      {
        codepipeline: converted,
      }
    ),
    '#with_codestarconnections':: 'Use this to override the default service endpoint URL',
    with_codestarconnections(value):: (
      local converted = value;
      assert std.isString(converted) : '"codestarconnections" expected to be of type "string"';
      {
        codestarconnections: converted,
      }
    ),
    '#with_codestarnotifications':: 'Use this to override the default service endpoint URL',
    with_codestarnotifications(value):: (
      local converted = value;
      assert std.isString(converted) : '"codestarnotifications" expected to be of type "string"';
      {
        codestarnotifications: converted,
      }
    ),
    '#with_cognitoidentity':: 'Use this to override the default service endpoint URL',
    with_cognitoidentity(value):: (
      local converted = value;
      assert std.isString(converted) : '"cognitoidentity" expected to be of type "string"';
      {
        cognitoidentity: converted,
      }
    ),
    '#with_cognitoidentityprovider':: 'Use this to override the default service endpoint URL',
    with_cognitoidentityprovider(value):: (
      local converted = value;
      assert std.isString(converted) : '"cognitoidentityprovider" expected to be of type "string"';
      {
        cognitoidentityprovider: converted,
      }
    ),
    '#with_cognitoidp':: 'Use this to override the default service endpoint URL',
    with_cognitoidp(value):: (
      local converted = value;
      assert std.isString(converted) : '"cognitoidp" expected to be of type "string"';
      {
        cognitoidp: converted,
      }
    ),
    '#with_comprehend':: 'Use this to override the default service endpoint URL',
    with_comprehend(value):: (
      local converted = value;
      assert std.isString(converted) : '"comprehend" expected to be of type "string"';
      {
        comprehend: converted,
      }
    ),
    '#with_computeoptimizer':: 'Use this to override the default service endpoint URL',
    with_computeoptimizer(value):: (
      local converted = value;
      assert std.isString(converted) : '"computeoptimizer" expected to be of type "string"';
      {
        computeoptimizer: converted,
      }
    ),
    '#with_config':: 'Use this to override the default service endpoint URL',
    with_config(value):: (
      local converted = value;
      assert std.isString(converted) : '"config" expected to be of type "string"';
      {
        config: converted,
      }
    ),
    '#with_configservice':: 'Use this to override the default service endpoint URL',
    with_configservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"configservice" expected to be of type "string"';
      {
        configservice: converted,
      }
    ),
    '#with_connect':: 'Use this to override the default service endpoint URL',
    with_connect(value):: (
      local converted = value;
      assert std.isString(converted) : '"connect" expected to be of type "string"';
      {
        connect: converted,
      }
    ),
    '#with_connectcases':: 'Use this to override the default service endpoint URL',
    with_connectcases(value):: (
      local converted = value;
      assert std.isString(converted) : '"connectcases" expected to be of type "string"';
      {
        connectcases: converted,
      }
    ),
    '#with_controltower':: 'Use this to override the default service endpoint URL',
    with_controltower(value):: (
      local converted = value;
      assert std.isString(converted) : '"controltower" expected to be of type "string"';
      {
        controltower: converted,
      }
    ),
    '#with_costandusagereportservice':: 'Use this to override the default service endpoint URL',
    with_costandusagereportservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"costandusagereportservice" expected to be of type "string"';
      {
        costandusagereportservice: converted,
      }
    ),
    '#with_costexplorer':: 'Use this to override the default service endpoint URL',
    with_costexplorer(value):: (
      local converted = value;
      assert std.isString(converted) : '"costexplorer" expected to be of type "string"';
      {
        costexplorer: converted,
      }
    ),
    '#with_costoptimizationhub':: 'Use this to override the default service endpoint URL',
    with_costoptimizationhub(value):: (
      local converted = value;
      assert std.isString(converted) : '"costoptimizationhub" expected to be of type "string"';
      {
        costoptimizationhub: converted,
      }
    ),
    '#with_cur':: 'Use this to override the default service endpoint URL',
    with_cur(value):: (
      local converted = value;
      assert std.isString(converted) : '"cur" expected to be of type "string"';
      {
        cur: converted,
      }
    ),
    '#with_customerprofiles':: 'Use this to override the default service endpoint URL',
    with_customerprofiles(value):: (
      local converted = value;
      assert std.isString(converted) : '"customerprofiles" expected to be of type "string"';
      {
        customerprofiles: converted,
      }
    ),
    '#with_databasemigration':: 'Use this to override the default service endpoint URL',
    with_databasemigration(value):: (
      local converted = value;
      assert std.isString(converted) : '"databasemigration" expected to be of type "string"';
      {
        databasemigration: converted,
      }
    ),
    '#with_databasemigrationservice':: 'Use this to override the default service endpoint URL',
    with_databasemigrationservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"databasemigrationservice" expected to be of type "string"';
      {
        databasemigrationservice: converted,
      }
    ),
    '#with_databrew':: 'Use this to override the default service endpoint URL',
    with_databrew(value):: (
      local converted = value;
      assert std.isString(converted) : '"databrew" expected to be of type "string"';
      {
        databrew: converted,
      }
    ),
    '#with_dataexchange':: 'Use this to override the default service endpoint URL',
    with_dataexchange(value):: (
      local converted = value;
      assert std.isString(converted) : '"dataexchange" expected to be of type "string"';
      {
        dataexchange: converted,
      }
    ),
    '#with_datapipeline':: 'Use this to override the default service endpoint URL',
    with_datapipeline(value):: (
      local converted = value;
      assert std.isString(converted) : '"datapipeline" expected to be of type "string"';
      {
        datapipeline: converted,
      }
    ),
    '#with_datasync':: 'Use this to override the default service endpoint URL',
    with_datasync(value):: (
      local converted = value;
      assert std.isString(converted) : '"datasync" expected to be of type "string"';
      {
        datasync: converted,
      }
    ),
    '#with_datazone':: 'Use this to override the default service endpoint URL',
    with_datazone(value):: (
      local converted = value;
      assert std.isString(converted) : '"datazone" expected to be of type "string"';
      {
        datazone: converted,
      }
    ),
    '#with_dax':: 'Use this to override the default service endpoint URL',
    with_dax(value):: (
      local converted = value;
      assert std.isString(converted) : '"dax" expected to be of type "string"';
      {
        dax: converted,
      }
    ),
    '#with_deploy':: 'Use this to override the default service endpoint URL',
    with_deploy(value):: (
      local converted = value;
      assert std.isString(converted) : '"deploy" expected to be of type "string"';
      {
        deploy: converted,
      }
    ),
    '#with_detective':: 'Use this to override the default service endpoint URL',
    with_detective(value):: (
      local converted = value;
      assert std.isString(converted) : '"detective" expected to be of type "string"';
      {
        detective: converted,
      }
    ),
    '#with_devicefarm':: 'Use this to override the default service endpoint URL',
    with_devicefarm(value):: (
      local converted = value;
      assert std.isString(converted) : '"devicefarm" expected to be of type "string"';
      {
        devicefarm: converted,
      }
    ),
    '#with_devopsguru':: 'Use this to override the default service endpoint URL',
    with_devopsguru(value):: (
      local converted = value;
      assert std.isString(converted) : '"devopsguru" expected to be of type "string"';
      {
        devopsguru: converted,
      }
    ),
    '#with_directconnect':: 'Use this to override the default service endpoint URL',
    with_directconnect(value):: (
      local converted = value;
      assert std.isString(converted) : '"directconnect" expected to be of type "string"';
      {
        directconnect: converted,
      }
    ),
    '#with_directoryservice':: 'Use this to override the default service endpoint URL',
    with_directoryservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"directoryservice" expected to be of type "string"';
      {
        directoryservice: converted,
      }
    ),
    '#with_dlm':: 'Use this to override the default service endpoint URL',
    with_dlm(value):: (
      local converted = value;
      assert std.isString(converted) : '"dlm" expected to be of type "string"';
      {
        dlm: converted,
      }
    ),
    '#with_dms':: 'Use this to override the default service endpoint URL',
    with_dms(value):: (
      local converted = value;
      assert std.isString(converted) : '"dms" expected to be of type "string"';
      {
        dms: converted,
      }
    ),
    '#with_docdb':: 'Use this to override the default service endpoint URL',
    with_docdb(value):: (
      local converted = value;
      assert std.isString(converted) : '"docdb" expected to be of type "string"';
      {
        docdb: converted,
      }
    ),
    '#with_docdbelastic':: 'Use this to override the default service endpoint URL',
    with_docdbelastic(value):: (
      local converted = value;
      assert std.isString(converted) : '"docdbelastic" expected to be of type "string"';
      {
        docdbelastic: converted,
      }
    ),
    '#with_drs':: 'Use this to override the default service endpoint URL',
    with_drs(value):: (
      local converted = value;
      assert std.isString(converted) : '"drs" expected to be of type "string"';
      {
        drs: converted,
      }
    ),
    '#with_ds':: 'Use this to override the default service endpoint URL',
    with_ds(value):: (
      local converted = value;
      assert std.isString(converted) : '"ds" expected to be of type "string"';
      {
        ds: converted,
      }
    ),
    '#with_dsql':: 'Use this to override the default service endpoint URL',
    with_dsql(value):: (
      local converted = value;
      assert std.isString(converted) : '"dsql" expected to be of type "string"';
      {
        dsql: converted,
      }
    ),
    '#with_dynamodb':: 'Use this to override the default service endpoint URL',
    with_dynamodb(value):: (
      local converted = value;
      assert std.isString(converted) : '"dynamodb" expected to be of type "string"';
      {
        dynamodb: converted,
      }
    ),
    '#with_ec2':: 'Use this to override the default service endpoint URL',
    with_ec2(value):: (
      local converted = value;
      assert std.isString(converted) : '"ec2" expected to be of type "string"';
      {
        ec2: converted,
      }
    ),
    '#with_ecr':: 'Use this to override the default service endpoint URL',
    with_ecr(value):: (
      local converted = value;
      assert std.isString(converted) : '"ecr" expected to be of type "string"';
      {
        ecr: converted,
      }
    ),
    '#with_ecrpublic':: 'Use this to override the default service endpoint URL',
    with_ecrpublic(value):: (
      local converted = value;
      assert std.isString(converted) : '"ecrpublic" expected to be of type "string"';
      {
        ecrpublic: converted,
      }
    ),
    '#with_ecs':: 'Use this to override the default service endpoint URL',
    with_ecs(value):: (
      local converted = value;
      assert std.isString(converted) : '"ecs" expected to be of type "string"';
      {
        ecs: converted,
      }
    ),
    '#with_efs':: 'Use this to override the default service endpoint URL',
    with_efs(value):: (
      local converted = value;
      assert std.isString(converted) : '"efs" expected to be of type "string"';
      {
        efs: converted,
      }
    ),
    '#with_eks':: 'Use this to override the default service endpoint URL',
    with_eks(value):: (
      local converted = value;
      assert std.isString(converted) : '"eks" expected to be of type "string"';
      {
        eks: converted,
      }
    ),
    '#with_elasticache':: 'Use this to override the default service endpoint URL',
    with_elasticache(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticache" expected to be of type "string"';
      {
        elasticache: converted,
      }
    ),
    '#with_elasticbeanstalk':: 'Use this to override the default service endpoint URL',
    with_elasticbeanstalk(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticbeanstalk" expected to be of type "string"';
      {
        elasticbeanstalk: converted,
      }
    ),
    '#with_elasticloadbalancing':: 'Use this to override the default service endpoint URL',
    with_elasticloadbalancing(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticloadbalancing" expected to be of type "string"';
      {
        elasticloadbalancing: converted,
      }
    ),
    '#with_elasticloadbalancingv2':: 'Use this to override the default service endpoint URL',
    with_elasticloadbalancingv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticloadbalancingv2" expected to be of type "string"';
      {
        elasticloadbalancingv2: converted,
      }
    ),
    '#with_elasticsearch':: 'Use this to override the default service endpoint URL',
    with_elasticsearch(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticsearch" expected to be of type "string"';
      {
        elasticsearch: converted,
      }
    ),
    '#with_elasticsearchservice':: 'Use this to override the default service endpoint URL',
    with_elasticsearchservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticsearchservice" expected to be of type "string"';
      {
        elasticsearchservice: converted,
      }
    ),
    '#with_elastictranscoder':: 'Use this to override the default service endpoint URL',
    with_elastictranscoder(value):: (
      local converted = value;
      assert std.isString(converted) : '"elastictranscoder" expected to be of type "string"';
      {
        elastictranscoder: converted,
      }
    ),
    '#with_elb':: 'Use this to override the default service endpoint URL',
    with_elb(value):: (
      local converted = value;
      assert std.isString(converted) : '"elb" expected to be of type "string"';
      {
        elb: converted,
      }
    ),
    '#with_elbv2':: 'Use this to override the default service endpoint URL',
    with_elbv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"elbv2" expected to be of type "string"';
      {
        elbv2: converted,
      }
    ),
    '#with_emr':: 'Use this to override the default service endpoint URL',
    with_emr(value):: (
      local converted = value;
      assert std.isString(converted) : '"emr" expected to be of type "string"';
      {
        emr: converted,
      }
    ),
    '#with_emrcontainers':: 'Use this to override the default service endpoint URL',
    with_emrcontainers(value):: (
      local converted = value;
      assert std.isString(converted) : '"emrcontainers" expected to be of type "string"';
      {
        emrcontainers: converted,
      }
    ),
    '#with_emrserverless':: 'Use this to override the default service endpoint URL',
    with_emrserverless(value):: (
      local converted = value;
      assert std.isString(converted) : '"emrserverless" expected to be of type "string"';
      {
        emrserverless: converted,
      }
    ),
    '#with_es':: 'Use this to override the default service endpoint URL',
    with_es(value):: (
      local converted = value;
      assert std.isString(converted) : '"es" expected to be of type "string"';
      {
        es: converted,
      }
    ),
    '#with_eventbridge':: 'Use this to override the default service endpoint URL',
    with_eventbridge(value):: (
      local converted = value;
      assert std.isString(converted) : '"eventbridge" expected to be of type "string"';
      {
        eventbridge: converted,
      }
    ),
    '#with_events':: 'Use this to override the default service endpoint URL',
    with_events(value):: (
      local converted = value;
      assert std.isString(converted) : '"events" expected to be of type "string"';
      {
        events: converted,
      }
    ),
    '#with_evidently':: 'Use this to override the default service endpoint URL',
    with_evidently(value):: (
      local converted = value;
      assert std.isString(converted) : '"evidently" expected to be of type "string"';
      {
        evidently: converted,
      }
    ),
    '#with_evs':: 'Use this to override the default service endpoint URL',
    with_evs(value):: (
      local converted = value;
      assert std.isString(converted) : '"evs" expected to be of type "string"';
      {
        evs: converted,
      }
    ),
    '#with_finspace':: 'Use this to override the default service endpoint URL',
    with_finspace(value):: (
      local converted = value;
      assert std.isString(converted) : '"finspace" expected to be of type "string"';
      {
        finspace: converted,
      }
    ),
    '#with_firehose':: 'Use this to override the default service endpoint URL',
    with_firehose(value):: (
      local converted = value;
      assert std.isString(converted) : '"firehose" expected to be of type "string"';
      {
        firehose: converted,
      }
    ),
    '#with_fis':: 'Use this to override the default service endpoint URL',
    with_fis(value):: (
      local converted = value;
      assert std.isString(converted) : '"fis" expected to be of type "string"';
      {
        fis: converted,
      }
    ),
    '#with_fms':: 'Use this to override the default service endpoint URL',
    with_fms(value):: (
      local converted = value;
      assert std.isString(converted) : '"fms" expected to be of type "string"';
      {
        fms: converted,
      }
    ),
    '#with_fsx':: 'Use this to override the default service endpoint URL',
    with_fsx(value):: (
      local converted = value;
      assert std.isString(converted) : '"fsx" expected to be of type "string"';
      {
        fsx: converted,
      }
    ),
    '#with_gamelift':: 'Use this to override the default service endpoint URL',
    with_gamelift(value):: (
      local converted = value;
      assert std.isString(converted) : '"gamelift" expected to be of type "string"';
      {
        gamelift: converted,
      }
    ),
    '#with_glacier':: 'Use this to override the default service endpoint URL',
    with_glacier(value):: (
      local converted = value;
      assert std.isString(converted) : '"glacier" expected to be of type "string"';
      {
        glacier: converted,
      }
    ),
    '#with_globalaccelerator':: 'Use this to override the default service endpoint URL',
    with_globalaccelerator(value):: (
      local converted = value;
      assert std.isString(converted) : '"globalaccelerator" expected to be of type "string"';
      {
        globalaccelerator: converted,
      }
    ),
    '#with_glue':: 'Use this to override the default service endpoint URL',
    with_glue(value):: (
      local converted = value;
      assert std.isString(converted) : '"glue" expected to be of type "string"';
      {
        glue: converted,
      }
    ),
    '#with_gluedatabrew':: 'Use this to override the default service endpoint URL',
    with_gluedatabrew(value):: (
      local converted = value;
      assert std.isString(converted) : '"gluedatabrew" expected to be of type "string"';
      {
        gluedatabrew: converted,
      }
    ),
    '#with_grafana':: 'Use this to override the default service endpoint URL',
    with_grafana(value):: (
      local converted = value;
      assert std.isString(converted) : '"grafana" expected to be of type "string"';
      {
        grafana: converted,
      }
    ),
    '#with_greengrass':: 'Use this to override the default service endpoint URL',
    with_greengrass(value):: (
      local converted = value;
      assert std.isString(converted) : '"greengrass" expected to be of type "string"';
      {
        greengrass: converted,
      }
    ),
    '#with_groundstation':: 'Use this to override the default service endpoint URL',
    with_groundstation(value):: (
      local converted = value;
      assert std.isString(converted) : '"groundstation" expected to be of type "string"';
      {
        groundstation: converted,
      }
    ),
    '#with_guardduty':: 'Use this to override the default service endpoint URL',
    with_guardduty(value):: (
      local converted = value;
      assert std.isString(converted) : '"guardduty" expected to be of type "string"';
      {
        guardduty: converted,
      }
    ),
    '#with_healthlake':: 'Use this to override the default service endpoint URL',
    with_healthlake(value):: (
      local converted = value;
      assert std.isString(converted) : '"healthlake" expected to be of type "string"';
      {
        healthlake: converted,
      }
    ),
    '#with_iam':: 'Use this to override the default service endpoint URL',
    with_iam(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam" expected to be of type "string"';
      {
        iam: converted,
      }
    ),
    '#with_identitystore':: 'Use this to override the default service endpoint URL',
    with_identitystore(value):: (
      local converted = value;
      assert std.isString(converted) : '"identitystore" expected to be of type "string"';
      {
        identitystore: converted,
      }
    ),
    '#with_imagebuilder':: 'Use this to override the default service endpoint URL',
    with_imagebuilder(value):: (
      local converted = value;
      assert std.isString(converted) : '"imagebuilder" expected to be of type "string"';
      {
        imagebuilder: converted,
      }
    ),
    '#with_inspector':: 'Use this to override the default service endpoint URL',
    with_inspector(value):: (
      local converted = value;
      assert std.isString(converted) : '"inspector" expected to be of type "string"';
      {
        inspector: converted,
      }
    ),
    '#with_inspector2':: 'Use this to override the default service endpoint URL',
    with_inspector2(value):: (
      local converted = value;
      assert std.isString(converted) : '"inspector2" expected to be of type "string"';
      {
        inspector2: converted,
      }
    ),
    '#with_inspectorv2':: 'Use this to override the default service endpoint URL',
    with_inspectorv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"inspectorv2" expected to be of type "string"';
      {
        inspectorv2: converted,
      }
    ),
    '#with_internetmonitor':: 'Use this to override the default service endpoint URL',
    with_internetmonitor(value):: (
      local converted = value;
      assert std.isString(converted) : '"internetmonitor" expected to be of type "string"';
      {
        internetmonitor: converted,
      }
    ),
    '#with_invoicing':: 'Use this to override the default service endpoint URL',
    with_invoicing(value):: (
      local converted = value;
      assert std.isString(converted) : '"invoicing" expected to be of type "string"';
      {
        invoicing: converted,
      }
    ),
    '#with_iot':: 'Use this to override the default service endpoint URL',
    with_iot(value):: (
      local converted = value;
      assert std.isString(converted) : '"iot" expected to be of type "string"';
      {
        iot: converted,
      }
    ),
    '#with_ivs':: 'Use this to override the default service endpoint URL',
    with_ivs(value):: (
      local converted = value;
      assert std.isString(converted) : '"ivs" expected to be of type "string"';
      {
        ivs: converted,
      }
    ),
    '#with_ivschat':: 'Use this to override the default service endpoint URL',
    with_ivschat(value):: (
      local converted = value;
      assert std.isString(converted) : '"ivschat" expected to be of type "string"';
      {
        ivschat: converted,
      }
    ),
    '#with_kafka':: 'Use this to override the default service endpoint URL',
    with_kafka(value):: (
      local converted = value;
      assert std.isString(converted) : '"kafka" expected to be of type "string"';
      {
        kafka: converted,
      }
    ),
    '#with_kafkaconnect':: 'Use this to override the default service endpoint URL',
    with_kafkaconnect(value):: (
      local converted = value;
      assert std.isString(converted) : '"kafkaconnect" expected to be of type "string"';
      {
        kafkaconnect: converted,
      }
    ),
    '#with_kendra':: 'Use this to override the default service endpoint URL',
    with_kendra(value):: (
      local converted = value;
      assert std.isString(converted) : '"kendra" expected to be of type "string"';
      {
        kendra: converted,
      }
    ),
    '#with_keyspaces':: 'Use this to override the default service endpoint URL',
    with_keyspaces(value):: (
      local converted = value;
      assert std.isString(converted) : '"keyspaces" expected to be of type "string"';
      {
        keyspaces: converted,
      }
    ),
    '#with_kinesis':: 'Use this to override the default service endpoint URL',
    with_kinesis(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesis" expected to be of type "string"';
      {
        kinesis: converted,
      }
    ),
    '#with_kinesisanalytics':: 'Use this to override the default service endpoint URL',
    with_kinesisanalytics(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesisanalytics" expected to be of type "string"';
      {
        kinesisanalytics: converted,
      }
    ),
    '#with_kinesisanalyticsv2':: 'Use this to override the default service endpoint URL',
    with_kinesisanalyticsv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesisanalyticsv2" expected to be of type "string"';
      {
        kinesisanalyticsv2: converted,
      }
    ),
    '#with_kinesisvideo':: 'Use this to override the default service endpoint URL',
    with_kinesisvideo(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesisvideo" expected to be of type "string"';
      {
        kinesisvideo: converted,
      }
    ),
    '#with_kms':: 'Use this to override the default service endpoint URL',
    with_kms(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms" expected to be of type "string"';
      {
        kms: converted,
      }
    ),
    '#with_lakeformation':: 'Use this to override the default service endpoint URL',
    with_lakeformation(value):: (
      local converted = value;
      assert std.isString(converted) : '"lakeformation" expected to be of type "string"';
      {
        lakeformation: converted,
      }
    ),
    '#with_lambda':: 'Use this to override the default service endpoint URL',
    with_lambda(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda" expected to be of type "string"';
      {
        lambda: converted,
      }
    ),
    '#with_launchwizard':: 'Use this to override the default service endpoint URL',
    with_launchwizard(value):: (
      local converted = value;
      assert std.isString(converted) : '"launchwizard" expected to be of type "string"';
      {
        launchwizard: converted,
      }
    ),
    '#with_lex':: 'Use this to override the default service endpoint URL',
    with_lex(value):: (
      local converted = value;
      assert std.isString(converted) : '"lex" expected to be of type "string"';
      {
        lex: converted,
      }
    ),
    '#with_lexmodelbuilding':: 'Use this to override the default service endpoint URL',
    with_lexmodelbuilding(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexmodelbuilding" expected to be of type "string"';
      {
        lexmodelbuilding: converted,
      }
    ),
    '#with_lexmodelbuildingservice':: 'Use this to override the default service endpoint URL',
    with_lexmodelbuildingservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexmodelbuildingservice" expected to be of type "string"';
      {
        lexmodelbuildingservice: converted,
      }
    ),
    '#with_lexmodels':: 'Use this to override the default service endpoint URL',
    with_lexmodels(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexmodels" expected to be of type "string"';
      {
        lexmodels: converted,
      }
    ),
    '#with_lexmodelsv2':: 'Use this to override the default service endpoint URL',
    with_lexmodelsv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexmodelsv2" expected to be of type "string"';
      {
        lexmodelsv2: converted,
      }
    ),
    '#with_lexv2models':: 'Use this to override the default service endpoint URL',
    with_lexv2models(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexv2models" expected to be of type "string"';
      {
        lexv2models: converted,
      }
    ),
    '#with_licensemanager':: 'Use this to override the default service endpoint URL',
    with_licensemanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"licensemanager" expected to be of type "string"';
      {
        licensemanager: converted,
      }
    ),
    '#with_lightsail':: 'Use this to override the default service endpoint URL',
    with_lightsail(value):: (
      local converted = value;
      assert std.isString(converted) : '"lightsail" expected to be of type "string"';
      {
        lightsail: converted,
      }
    ),
    '#with_location':: 'Use this to override the default service endpoint URL',
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    '#with_locationservice':: 'Use this to override the default service endpoint URL',
    with_locationservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"locationservice" expected to be of type "string"';
      {
        locationservice: converted,
      }
    ),
    '#with_logs':: 'Use this to override the default service endpoint URL',
    with_logs(value):: (
      local converted = value;
      assert std.isString(converted) : '"logs" expected to be of type "string"';
      {
        logs: converted,
      }
    ),
    '#with_lookoutmetrics':: 'Use this to override the default service endpoint URL',
    with_lookoutmetrics(value):: (
      local converted = value;
      assert std.isString(converted) : '"lookoutmetrics" expected to be of type "string"';
      {
        lookoutmetrics: converted,
      }
    ),
    '#with_m2':: 'Use this to override the default service endpoint URL',
    with_m2(value):: (
      local converted = value;
      assert std.isString(converted) : '"m2" expected to be of type "string"';
      {
        m2: converted,
      }
    ),
    '#with_macie2':: 'Use this to override the default service endpoint URL',
    with_macie2(value):: (
      local converted = value;
      assert std.isString(converted) : '"macie2" expected to be of type "string"';
      {
        macie2: converted,
      }
    ),
    '#with_managedgrafana':: 'Use this to override the default service endpoint URL',
    with_managedgrafana(value):: (
      local converted = value;
      assert std.isString(converted) : '"managedgrafana" expected to be of type "string"';
      {
        managedgrafana: converted,
      }
    ),
    '#with_mediaconnect':: 'Use this to override the default service endpoint URL',
    with_mediaconnect(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediaconnect" expected to be of type "string"';
      {
        mediaconnect: converted,
      }
    ),
    '#with_mediaconvert':: 'Use this to override the default service endpoint URL',
    with_mediaconvert(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediaconvert" expected to be of type "string"';
      {
        mediaconvert: converted,
      }
    ),
    '#with_medialive':: 'Use this to override the default service endpoint URL',
    with_medialive(value):: (
      local converted = value;
      assert std.isString(converted) : '"medialive" expected to be of type "string"';
      {
        medialive: converted,
      }
    ),
    '#with_mediapackage':: 'Use this to override the default service endpoint URL',
    with_mediapackage(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediapackage" expected to be of type "string"';
      {
        mediapackage: converted,
      }
    ),
    '#with_mediapackagev2':: 'Use this to override the default service endpoint URL',
    with_mediapackagev2(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediapackagev2" expected to be of type "string"';
      {
        mediapackagev2: converted,
      }
    ),
    '#with_mediapackagevod':: 'Use this to override the default service endpoint URL',
    with_mediapackagevod(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediapackagevod" expected to be of type "string"';
      {
        mediapackagevod: converted,
      }
    ),
    '#with_mediastore':: 'Use this to override the default service endpoint URL',
    with_mediastore(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediastore" expected to be of type "string"';
      {
        mediastore: converted,
      }
    ),
    '#with_memorydb':: 'Use this to override the default service endpoint URL',
    with_memorydb(value):: (
      local converted = value;
      assert std.isString(converted) : '"memorydb" expected to be of type "string"';
      {
        memorydb: converted,
      }
    ),
    '#with_mgn':: 'Use this to override the default service endpoint URL',
    with_mgn(value):: (
      local converted = value;
      assert std.isString(converted) : '"mgn" expected to be of type "string"';
      {
        mgn: converted,
      }
    ),
    '#with_mq':: 'Use this to override the default service endpoint URL',
    with_mq(value):: (
      local converted = value;
      assert std.isString(converted) : '"mq" expected to be of type "string"';
      {
        mq: converted,
      }
    ),
    '#with_msk':: 'Use this to override the default service endpoint URL',
    with_msk(value):: (
      local converted = value;
      assert std.isString(converted) : '"msk" expected to be of type "string"';
      {
        msk: converted,
      }
    ),
    '#with_mwaa':: 'Use this to override the default service endpoint URL',
    with_mwaa(value):: (
      local converted = value;
      assert std.isString(converted) : '"mwaa" expected to be of type "string"';
      {
        mwaa: converted,
      }
    ),
    '#with_neptune':: 'Use this to override the default service endpoint URL',
    with_neptune(value):: (
      local converted = value;
      assert std.isString(converted) : '"neptune" expected to be of type "string"';
      {
        neptune: converted,
      }
    ),
    '#with_neptunegraph':: 'Use this to override the default service endpoint URL',
    with_neptunegraph(value):: (
      local converted = value;
      assert std.isString(converted) : '"neptunegraph" expected to be of type "string"';
      {
        neptunegraph: converted,
      }
    ),
    '#with_networkfirewall':: 'Use this to override the default service endpoint URL',
    with_networkfirewall(value):: (
      local converted = value;
      assert std.isString(converted) : '"networkfirewall" expected to be of type "string"';
      {
        networkfirewall: converted,
      }
    ),
    '#with_networkmanager':: 'Use this to override the default service endpoint URL',
    with_networkmanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"networkmanager" expected to be of type "string"';
      {
        networkmanager: converted,
      }
    ),
    '#with_networkmonitor':: 'Use this to override the default service endpoint URL',
    with_networkmonitor(value):: (
      local converted = value;
      assert std.isString(converted) : '"networkmonitor" expected to be of type "string"';
      {
        networkmonitor: converted,
      }
    ),
    '#with_notifications':: 'Use this to override the default service endpoint URL',
    with_notifications(value):: (
      local converted = value;
      assert std.isString(converted) : '"notifications" expected to be of type "string"';
      {
        notifications: converted,
      }
    ),
    '#with_notificationscontacts':: 'Use this to override the default service endpoint URL',
    with_notificationscontacts(value):: (
      local converted = value;
      assert std.isString(converted) : '"notificationscontacts" expected to be of type "string"';
      {
        notificationscontacts: converted,
      }
    ),
    '#with_oam':: 'Use this to override the default service endpoint URL',
    with_oam(value):: (
      local converted = value;
      assert std.isString(converted) : '"oam" expected to be of type "string"';
      {
        oam: converted,
      }
    ),
    '#with_opensearch':: 'Use this to override the default service endpoint URL',
    with_opensearch(value):: (
      local converted = value;
      assert std.isString(converted) : '"opensearch" expected to be of type "string"';
      {
        opensearch: converted,
      }
    ),
    '#with_opensearchingestion':: 'Use this to override the default service endpoint URL',
    with_opensearchingestion(value):: (
      local converted = value;
      assert std.isString(converted) : '"opensearchingestion" expected to be of type "string"';
      {
        opensearchingestion: converted,
      }
    ),
    '#with_opensearchserverless':: 'Use this to override the default service endpoint URL',
    with_opensearchserverless(value):: (
      local converted = value;
      assert std.isString(converted) : '"opensearchserverless" expected to be of type "string"';
      {
        opensearchserverless: converted,
      }
    ),
    '#with_opensearchservice':: 'Use this to override the default service endpoint URL',
    with_opensearchservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"opensearchservice" expected to be of type "string"';
      {
        opensearchservice: converted,
      }
    ),
    '#with_organizations':: 'Use this to override the default service endpoint URL',
    with_organizations(value):: (
      local converted = value;
      assert std.isString(converted) : '"organizations" expected to be of type "string"';
      {
        organizations: converted,
      }
    ),
    '#with_osis':: 'Use this to override the default service endpoint URL',
    with_osis(value):: (
      local converted = value;
      assert std.isString(converted) : '"osis" expected to be of type "string"';
      {
        osis: converted,
      }
    ),
    '#with_outposts':: 'Use this to override the default service endpoint URL',
    with_outposts(value):: (
      local converted = value;
      assert std.isString(converted) : '"outposts" expected to be of type "string"';
      {
        outposts: converted,
      }
    ),
    '#with_paymentcryptography':: 'Use this to override the default service endpoint URL',
    with_paymentcryptography(value):: (
      local converted = value;
      assert std.isString(converted) : '"paymentcryptography" expected to be of type "string"';
      {
        paymentcryptography: converted,
      }
    ),
    '#with_pcaconnectorad':: 'Use this to override the default service endpoint URL',
    with_pcaconnectorad(value):: (
      local converted = value;
      assert std.isString(converted) : '"pcaconnectorad" expected to be of type "string"';
      {
        pcaconnectorad: converted,
      }
    ),
    '#with_pcs':: 'Use this to override the default service endpoint URL',
    with_pcs(value):: (
      local converted = value;
      assert std.isString(converted) : '"pcs" expected to be of type "string"';
      {
        pcs: converted,
      }
    ),
    '#with_pinpoint':: 'Use this to override the default service endpoint URL',
    with_pinpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"pinpoint" expected to be of type "string"';
      {
        pinpoint: converted,
      }
    ),
    '#with_pinpointsmsvoicev2':: 'Use this to override the default service endpoint URL',
    with_pinpointsmsvoicev2(value):: (
      local converted = value;
      assert std.isString(converted) : '"pinpointsmsvoicev2" expected to be of type "string"';
      {
        pinpointsmsvoicev2: converted,
      }
    ),
    '#with_pipes':: 'Use this to override the default service endpoint URL',
    with_pipes(value):: (
      local converted = value;
      assert std.isString(converted) : '"pipes" expected to be of type "string"';
      {
        pipes: converted,
      }
    ),
    '#with_polly':: 'Use this to override the default service endpoint URL',
    with_polly(value):: (
      local converted = value;
      assert std.isString(converted) : '"polly" expected to be of type "string"';
      {
        polly: converted,
      }
    ),
    '#with_pricing':: 'Use this to override the default service endpoint URL',
    with_pricing(value):: (
      local converted = value;
      assert std.isString(converted) : '"pricing" expected to be of type "string"';
      {
        pricing: converted,
      }
    ),
    '#with_prometheus':: 'Use this to override the default service endpoint URL',
    with_prometheus(value):: (
      local converted = value;
      assert std.isString(converted) : '"prometheus" expected to be of type "string"';
      {
        prometheus: converted,
      }
    ),
    '#with_prometheusservice':: 'Use this to override the default service endpoint URL',
    with_prometheusservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"prometheusservice" expected to be of type "string"';
      {
        prometheusservice: converted,
      }
    ),
    '#with_qbusiness':: 'Use this to override the default service endpoint URL',
    with_qbusiness(value):: (
      local converted = value;
      assert std.isString(converted) : '"qbusiness" expected to be of type "string"';
      {
        qbusiness: converted,
      }
    ),
    '#with_qldb':: 'Use this to override the default service endpoint URL',
    with_qldb(value):: (
      local converted = value;
      assert std.isString(converted) : '"qldb" expected to be of type "string"';
      {
        qldb: converted,
      }
    ),
    '#with_quicksight':: 'Use this to override the default service endpoint URL',
    with_quicksight(value):: (
      local converted = value;
      assert std.isString(converted) : '"quicksight" expected to be of type "string"';
      {
        quicksight: converted,
      }
    ),
    '#with_ram':: 'Use this to override the default service endpoint URL',
    with_ram(value):: (
      local converted = value;
      assert std.isString(converted) : '"ram" expected to be of type "string"';
      {
        ram: converted,
      }
    ),
    '#with_rbin':: 'Use this to override the default service endpoint URL',
    with_rbin(value):: (
      local converted = value;
      assert std.isString(converted) : '"rbin" expected to be of type "string"';
      {
        rbin: converted,
      }
    ),
    '#with_rds':: 'Use this to override the default service endpoint URL',
    with_rds(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds" expected to be of type "string"';
      {
        rds: converted,
      }
    ),
    '#with_recyclebin':: 'Use this to override the default service endpoint URL',
    with_recyclebin(value):: (
      local converted = value;
      assert std.isString(converted) : '"recyclebin" expected to be of type "string"';
      {
        recyclebin: converted,
      }
    ),
    '#with_redshift':: 'Use this to override the default service endpoint URL',
    with_redshift(value):: (
      local converted = value;
      assert std.isString(converted) : '"redshift" expected to be of type "string"';
      {
        redshift: converted,
      }
    ),
    '#with_redshiftdata':: 'Use this to override the default service endpoint URL',
    with_redshiftdata(value):: (
      local converted = value;
      assert std.isString(converted) : '"redshiftdata" expected to be of type "string"';
      {
        redshiftdata: converted,
      }
    ),
    '#with_redshiftdataapiservice':: 'Use this to override the default service endpoint URL',
    with_redshiftdataapiservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"redshiftdataapiservice" expected to be of type "string"';
      {
        redshiftdataapiservice: converted,
      }
    ),
    '#with_redshiftserverless':: 'Use this to override the default service endpoint URL',
    with_redshiftserverless(value):: (
      local converted = value;
      assert std.isString(converted) : '"redshiftserverless" expected to be of type "string"';
      {
        redshiftserverless: converted,
      }
    ),
    '#with_rekognition':: 'Use this to override the default service endpoint URL',
    with_rekognition(value):: (
      local converted = value;
      assert std.isString(converted) : '"rekognition" expected to be of type "string"';
      {
        rekognition: converted,
      }
    ),
    '#with_resiliencehub':: 'Use this to override the default service endpoint URL',
    with_resiliencehub(value):: (
      local converted = value;
      assert std.isString(converted) : '"resiliencehub" expected to be of type "string"';
      {
        resiliencehub: converted,
      }
    ),
    '#with_resourceexplorer2':: 'Use this to override the default service endpoint URL',
    with_resourceexplorer2(value):: (
      local converted = value;
      assert std.isString(converted) : '"resourceexplorer2" expected to be of type "string"';
      {
        resourceexplorer2: converted,
      }
    ),
    '#with_resourcegroups':: 'Use this to override the default service endpoint URL',
    with_resourcegroups(value):: (
      local converted = value;
      assert std.isString(converted) : '"resourcegroups" expected to be of type "string"';
      {
        resourcegroups: converted,
      }
    ),
    '#with_resourcegroupstagging':: 'Use this to override the default service endpoint URL',
    with_resourcegroupstagging(value):: (
      local converted = value;
      assert std.isString(converted) : '"resourcegroupstagging" expected to be of type "string"';
      {
        resourcegroupstagging: converted,
      }
    ),
    '#with_resourcegroupstaggingapi':: 'Use this to override the default service endpoint URL',
    with_resourcegroupstaggingapi(value):: (
      local converted = value;
      assert std.isString(converted) : '"resourcegroupstaggingapi" expected to be of type "string"';
      {
        resourcegroupstaggingapi: converted,
      }
    ),
    '#with_rolesanywhere':: 'Use this to override the default service endpoint URL',
    with_rolesanywhere(value):: (
      local converted = value;
      assert std.isString(converted) : '"rolesanywhere" expected to be of type "string"';
      {
        rolesanywhere: converted,
      }
    ),
    '#with_route53':: 'Use this to override the default service endpoint URL',
    with_route53(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53" expected to be of type "string"';
      {
        route53: converted,
      }
    ),
    '#with_route53domains':: 'Use this to override the default service endpoint URL',
    with_route53domains(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53domains" expected to be of type "string"';
      {
        route53domains: converted,
      }
    ),
    '#with_route53profiles':: 'Use this to override the default service endpoint URL',
    with_route53profiles(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53profiles" expected to be of type "string"';
      {
        route53profiles: converted,
      }
    ),
    '#with_route53recoverycontrolconfig':: 'Use this to override the default service endpoint URL',
    with_route53recoverycontrolconfig(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53recoverycontrolconfig" expected to be of type "string"';
      {
        route53recoverycontrolconfig: converted,
      }
    ),
    '#with_route53recoveryreadiness':: 'Use this to override the default service endpoint URL',
    with_route53recoveryreadiness(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53recoveryreadiness" expected to be of type "string"';
      {
        route53recoveryreadiness: converted,
      }
    ),
    '#with_route53resolver':: 'Use this to override the default service endpoint URL',
    with_route53resolver(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53resolver" expected to be of type "string"';
      {
        route53resolver: converted,
      }
    ),
    '#with_rum':: 'Use this to override the default service endpoint URL',
    with_rum(value):: (
      local converted = value;
      assert std.isString(converted) : '"rum" expected to be of type "string"';
      {
        rum: converted,
      }
    ),
    '#with_s3':: 'Use this to override the default service endpoint URL',
    with_s3(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3" expected to be of type "string"';
      {
        s3: converted,
      }
    ),
    '#with_s3api':: 'Use this to override the default service endpoint URL',
    with_s3api(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3api" expected to be of type "string"';
      {
        s3api: converted,
      }
    ),
    '#with_s3control':: 'Use this to override the default service endpoint URL',
    with_s3control(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3control" expected to be of type "string"';
      {
        s3control: converted,
      }
    ),
    '#with_s3outposts':: 'Use this to override the default service endpoint URL',
    with_s3outposts(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3outposts" expected to be of type "string"';
      {
        s3outposts: converted,
      }
    ),
    '#with_s3tables':: 'Use this to override the default service endpoint URL',
    with_s3tables(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3tables" expected to be of type "string"';
      {
        s3tables: converted,
      }
    ),
    '#with_sagemaker':: 'Use this to override the default service endpoint URL',
    with_sagemaker(value):: (
      local converted = value;
      assert std.isString(converted) : '"sagemaker" expected to be of type "string"';
      {
        sagemaker: converted,
      }
    ),
    '#with_scheduler':: 'Use this to override the default service endpoint URL',
    with_scheduler(value):: (
      local converted = value;
      assert std.isString(converted) : '"scheduler" expected to be of type "string"';
      {
        scheduler: converted,
      }
    ),
    '#with_schemas':: 'Use this to override the default service endpoint URL',
    with_schemas(value):: (
      local converted = value;
      assert std.isString(converted) : '"schemas" expected to be of type "string"';
      {
        schemas: converted,
      }
    ),
    '#with_secretsmanager':: 'Use this to override the default service endpoint URL',
    with_secretsmanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"secretsmanager" expected to be of type "string"';
      {
        secretsmanager: converted,
      }
    ),
    '#with_securityhub':: 'Use this to override the default service endpoint URL',
    with_securityhub(value):: (
      local converted = value;
      assert std.isString(converted) : '"securityhub" expected to be of type "string"';
      {
        securityhub: converted,
      }
    ),
    '#with_securitylake':: 'Use this to override the default service endpoint URL',
    with_securitylake(value):: (
      local converted = value;
      assert std.isString(converted) : '"securitylake" expected to be of type "string"';
      {
        securitylake: converted,
      }
    ),
    '#with_serverlessapplicationrepository':: 'Use this to override the default service endpoint URL',
    with_serverlessapplicationrepository(value):: (
      local converted = value;
      assert std.isString(converted) : '"serverlessapplicationrepository" expected to be of type "string"';
      {
        serverlessapplicationrepository: converted,
      }
    ),
    '#with_serverlessapprepo':: 'Use this to override the default service endpoint URL',
    with_serverlessapprepo(value):: (
      local converted = value;
      assert std.isString(converted) : '"serverlessapprepo" expected to be of type "string"';
      {
        serverlessapprepo: converted,
      }
    ),
    '#with_serverlessrepo':: 'Use this to override the default service endpoint URL',
    with_serverlessrepo(value):: (
      local converted = value;
      assert std.isString(converted) : '"serverlessrepo" expected to be of type "string"';
      {
        serverlessrepo: converted,
      }
    ),
    '#with_servicecatalog':: 'Use this to override the default service endpoint URL',
    with_servicecatalog(value):: (
      local converted = value;
      assert std.isString(converted) : '"servicecatalog" expected to be of type "string"';
      {
        servicecatalog: converted,
      }
    ),
    '#with_servicecatalogappregistry':: 'Use this to override the default service endpoint URL',
    with_servicecatalogappregistry(value):: (
      local converted = value;
      assert std.isString(converted) : '"servicecatalogappregistry" expected to be of type "string"';
      {
        servicecatalogappregistry: converted,
      }
    ),
    '#with_servicediscovery':: 'Use this to override the default service endpoint URL',
    with_servicediscovery(value):: (
      local converted = value;
      assert std.isString(converted) : '"servicediscovery" expected to be of type "string"';
      {
        servicediscovery: converted,
      }
    ),
    '#with_servicequotas':: 'Use this to override the default service endpoint URL',
    with_servicequotas(value):: (
      local converted = value;
      assert std.isString(converted) : '"servicequotas" expected to be of type "string"';
      {
        servicequotas: converted,
      }
    ),
    '#with_ses':: 'Use this to override the default service endpoint URL',
    with_ses(value):: (
      local converted = value;
      assert std.isString(converted) : '"ses" expected to be of type "string"';
      {
        ses: converted,
      }
    ),
    '#with_sesv2':: 'Use this to override the default service endpoint URL',
    with_sesv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"sesv2" expected to be of type "string"';
      {
        sesv2: converted,
      }
    ),
    '#with_sfn':: 'Use this to override the default service endpoint URL',
    with_sfn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sfn" expected to be of type "string"';
      {
        sfn: converted,
      }
    ),
    '#with_shield':: 'Use this to override the default service endpoint URL',
    with_shield(value):: (
      local converted = value;
      assert std.isString(converted) : '"shield" expected to be of type "string"';
      {
        shield: converted,
      }
    ),
    '#with_signer':: 'Use this to override the default service endpoint URL',
    with_signer(value):: (
      local converted = value;
      assert std.isString(converted) : '"signer" expected to be of type "string"';
      {
        signer: converted,
      }
    ),
    '#with_sns':: 'Use this to override the default service endpoint URL',
    with_sns(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns" expected to be of type "string"';
      {
        sns: converted,
      }
    ),
    '#with_sqs':: 'Use this to override the default service endpoint URL',
    with_sqs(value):: (
      local converted = value;
      assert std.isString(converted) : '"sqs" expected to be of type "string"';
      {
        sqs: converted,
      }
    ),
    '#with_ssm':: 'Use this to override the default service endpoint URL',
    with_ssm(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssm" expected to be of type "string"';
      {
        ssm: converted,
      }
    ),
    '#with_ssmcontacts':: 'Use this to override the default service endpoint URL',
    with_ssmcontacts(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssmcontacts" expected to be of type "string"';
      {
        ssmcontacts: converted,
      }
    ),
    '#with_ssmincidents':: 'Use this to override the default service endpoint URL',
    with_ssmincidents(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssmincidents" expected to be of type "string"';
      {
        ssmincidents: converted,
      }
    ),
    '#with_ssmquicksetup':: 'Use this to override the default service endpoint URL',
    with_ssmquicksetup(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssmquicksetup" expected to be of type "string"';
      {
        ssmquicksetup: converted,
      }
    ),
    '#with_ssmsap':: 'Use this to override the default service endpoint URL',
    with_ssmsap(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssmsap" expected to be of type "string"';
      {
        ssmsap: converted,
      }
    ),
    '#with_sso':: 'Use this to override the default service endpoint URL',
    with_sso(value):: (
      local converted = value;
      assert std.isString(converted) : '"sso" expected to be of type "string"';
      {
        sso: converted,
      }
    ),
    '#with_ssoadmin':: 'Use this to override the default service endpoint URL',
    with_ssoadmin(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssoadmin" expected to be of type "string"';
      {
        ssoadmin: converted,
      }
    ),
    '#with_stepfunctions':: 'Use this to override the default service endpoint URL',
    with_stepfunctions(value):: (
      local converted = value;
      assert std.isString(converted) : '"stepfunctions" expected to be of type "string"';
      {
        stepfunctions: converted,
      }
    ),
    '#with_storagegateway':: 'Use this to override the default service endpoint URL',
    with_storagegateway(value):: (
      local converted = value;
      assert std.isString(converted) : '"storagegateway" expected to be of type "string"';
      {
        storagegateway: converted,
      }
    ),
    '#with_sts':: 'Use this to override the default service endpoint URL',
    with_sts(value):: (
      local converted = value;
      assert std.isString(converted) : '"sts" expected to be of type "string"';
      {
        sts: converted,
      }
    ),
    '#with_swf':: 'Use this to override the default service endpoint URL',
    with_swf(value):: (
      local converted = value;
      assert std.isString(converted) : '"swf" expected to be of type "string"';
      {
        swf: converted,
      }
    ),
    '#with_synthetics':: 'Use this to override the default service endpoint URL',
    with_synthetics(value):: (
      local converted = value;
      assert std.isString(converted) : '"synthetics" expected to be of type "string"';
      {
        synthetics: converted,
      }
    ),
    '#with_taxsettings':: 'Use this to override the default service endpoint URL',
    with_taxsettings(value):: (
      local converted = value;
      assert std.isString(converted) : '"taxsettings" expected to be of type "string"';
      {
        taxsettings: converted,
      }
    ),
    '#with_timestreaminfluxdb':: 'Use this to override the default service endpoint URL',
    with_timestreaminfluxdb(value):: (
      local converted = value;
      assert std.isString(converted) : '"timestreaminfluxdb" expected to be of type "string"';
      {
        timestreaminfluxdb: converted,
      }
    ),
    '#with_timestreamquery':: 'Use this to override the default service endpoint URL',
    with_timestreamquery(value):: (
      local converted = value;
      assert std.isString(converted) : '"timestreamquery" expected to be of type "string"';
      {
        timestreamquery: converted,
      }
    ),
    '#with_timestreamwrite':: 'Use this to override the default service endpoint URL',
    with_timestreamwrite(value):: (
      local converted = value;
      assert std.isString(converted) : '"timestreamwrite" expected to be of type "string"';
      {
        timestreamwrite: converted,
      }
    ),
    '#with_transcribe':: 'Use this to override the default service endpoint URL',
    with_transcribe(value):: (
      local converted = value;
      assert std.isString(converted) : '"transcribe" expected to be of type "string"';
      {
        transcribe: converted,
      }
    ),
    '#with_transcribeservice':: 'Use this to override the default service endpoint URL',
    with_transcribeservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"transcribeservice" expected to be of type "string"';
      {
        transcribeservice: converted,
      }
    ),
    '#with_transfer':: 'Use this to override the default service endpoint URL',
    with_transfer(value):: (
      local converted = value;
      assert std.isString(converted) : '"transfer" expected to be of type "string"';
      {
        transfer: converted,
      }
    ),
    '#with_verifiedpermissions':: 'Use this to override the default service endpoint URL',
    with_verifiedpermissions(value):: (
      local converted = value;
      assert std.isString(converted) : '"verifiedpermissions" expected to be of type "string"';
      {
        verifiedpermissions: converted,
      }
    ),
    '#with_vpclattice':: 'Use this to override the default service endpoint URL',
    with_vpclattice(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpclattice" expected to be of type "string"';
      {
        vpclattice: converted,
      }
    ),
    '#with_waf':: 'Use this to override the default service endpoint URL',
    with_waf(value):: (
      local converted = value;
      assert std.isString(converted) : '"waf" expected to be of type "string"';
      {
        waf: converted,
      }
    ),
    '#with_wafregional':: 'Use this to override the default service endpoint URL',
    with_wafregional(value):: (
      local converted = value;
      assert std.isString(converted) : '"wafregional" expected to be of type "string"';
      {
        wafregional: converted,
      }
    ),
    '#with_wafv2':: 'Use this to override the default service endpoint URL',
    with_wafv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"wafv2" expected to be of type "string"';
      {
        wafv2: converted,
      }
    ),
    '#with_wellarchitected':: 'Use this to override the default service endpoint URL',
    with_wellarchitected(value):: (
      local converted = value;
      assert std.isString(converted) : '"wellarchitected" expected to be of type "string"';
      {
        wellarchitected: converted,
      }
    ),
    '#with_workspaces':: 'Use this to override the default service endpoint URL',
    with_workspaces(value):: (
      local converted = value;
      assert std.isString(converted) : '"workspaces" expected to be of type "string"';
      {
        workspaces: converted,
      }
    ),
    '#with_workspacesweb':: 'Use this to override the default service endpoint URL',
    with_workspacesweb(value):: (
      local converted = value;
      assert std.isString(converted) : '"workspacesweb" expected to be of type "string"';
      {
        workspacesweb: converted,
      }
    ),
    '#with_xray':: 'Use this to override the default service endpoint URL',
    with_xray(value):: (
      local converted = value;
      assert std.isString(converted) : '"xray" expected to be of type "string"';
      {
        xray: converted,
      }
    ),
  },
  ignore_tags:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_key_prefixes':: 'Resource tag key prefixes to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES environment variable.',
    with_key_prefixes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_prefixes" expected to be of type "set"';
      {
        key_prefixes: converted,
      }
    ),
    '#with_key_prefixes_mixin':: 'Resource tag key prefixes to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES environment variable.',
    with_key_prefixes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_prefixes" expected to be of type "set"';
      {
        key_prefixes+: converted,
      }
    ),
    '#with_keys':: 'Resource tag keys to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEYS environment variable.',
    with_keys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"keys" expected to be of type "set"';
      {
        keys: converted,
      }
    ),
    '#with_keys_mixin':: 'Resource tag keys to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEYS environment variable.',
    with_keys_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"keys" expected to be of type "set"';
      {
        keys+: converted,
      }
    ),
  },
  with_assume_role(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assume_role: value,
    }
  ),
  with_assume_role_with_web_identity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assume_role_with_web_identity: value,
    }
  ),
  with_default_tags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_tags: value,
    }
  ),
  with_endpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoints: value,
    }
  ),
  with_ignore_tags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ignore_tags: value,
    }
  ),
  with_assume_role_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assume_role+: converted,
    }
  ),
  with_assume_role_with_web_identity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assume_role_with_web_identity+: converted,
    }
  ),
  with_default_tags_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_tags+: converted,
    }
  ),
  with_endpoints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoints+: converted,
    }
  ),
  with_ignore_tags_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ignore_tags+: converted,
    }
  ),
}
