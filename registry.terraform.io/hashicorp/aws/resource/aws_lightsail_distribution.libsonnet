{
  local block = self,
  new(bundle_id, name):: (
    {}
    + block.with_bundle_id(bundle_id)
    + block.with_name(name)
  ),
  '#with_alternative_domain_names':: 'The alternate domain names of the distribution.',
  with_alternative_domain_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"alternative_domain_names" expected to be of type "list"';
    {
      alternative_domain_names: converted,
    }
  ),
  '#with_alternative_domain_names_mixin':: 'The alternate domain names of the distribution.',
  with_alternative_domain_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"alternative_domain_names" expected to be of type "list"';
    {
      alternative_domain_names+: converted,
    }
  ),
  '#with_arn':: 'The Amazon Resource Name (ARN) of the distribution.',
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  '#with_bundle_id':: 'The bundle ID to use for the distribution.',
  with_bundle_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  '#with_certificate_name':: 'The name of the SSL/TLS certificate attached to the distribution, if any.',
  with_certificate_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_name" expected to be of type "string"';
    {
      certificate_name: converted,
    }
  ),
  '#with_created_at':: 'The timestamp when the distribution was created.',
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  '#with_domain_name':: 'The domain name of the distribution.',
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_ip_address_type':: 'The IP address type of the distribution.',
  with_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  '#with_is_enabled':: 'Indicates whether the distribution is enabled.',
  with_is_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_enabled" expected to be of type "bool"';
    {
      is_enabled: converted,
    }
  ),
  '#with_location':: 'An object that describes the location of the distribution, such as the AWS Region and Availability Zone.',
  with_location(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"location" expected to be of type "list"';
    {
      location: converted,
    }
  ),
  '#with_location_mixin':: 'An object that describes the location of the distribution, such as the AWS Region and Availability Zone.',
  with_location_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"location" expected to be of type "list"';
    {
      location+: converted,
    }
  ),
  '#with_name':: 'The name of the distribution.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_origin_public_dns':: 'The public DNS of the origin.',
  with_origin_public_dns(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_public_dns" expected to be of type "string"';
    {
      origin_public_dns: converted,
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
  '#with_resource_type':: 'The Lightsail resource type (e.g., Distribution).',
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  '#with_status':: 'The status of the distribution.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_support_code':: 'The support code. Include this code in your email to support when you have questions about your Lightsail distribution. This code enables our support team to look up your Lightsail information more easily.',
  with_support_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_code" expected to be of type "string"';
    {
      support_code: converted,
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
  cache_behavior:: {
    local block = self,
    new(behavior, path):: (
      {}
      + block.with_behavior(behavior)
      + block.with_path(path)
    ),
    '#with_behavior':: 'The cache behavior for the specified path.',
    with_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"behavior" expected to be of type "string"';
      {
        behavior: converted,
      }
    ),
    '#with_path':: 'The path to a directory or file to cached, or not cache. Use an asterisk symbol to specify wildcard directories (path/to/assets/*), and file types (*.html, *jpg, *js). Directories and file paths are case-sensitive.',
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
  },
  cache_behavior_settings:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_allowed_http_methods':: "The HTTP methods that are processed and forwarded to the distribution's origin.",
    with_allowed_http_methods(value):: (
      local converted = value;
      assert std.isString(converted) : '"allowed_http_methods" expected to be of type "string"';
      {
        allowed_http_methods: converted,
      }
    ),
    '#with_cached_http_methods':: 'The HTTP method responses that are cached by your distribution.',
    with_cached_http_methods(value):: (
      local converted = value;
      assert std.isString(converted) : '"cached_http_methods" expected to be of type "string"';
      {
        cached_http_methods: converted,
      }
    ),
    '#with_default_ttl':: "The default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated.",
    with_default_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"default_ttl" expected to be of type "number"';
      {
        default_ttl: converted,
      }
    ),
    '#with_maximum_ttl':: "The maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.",
    with_maximum_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_ttl" expected to be of type "number"';
      {
        maximum_ttl: converted,
      }
    ),
    '#with_minimum_ttl':: "The minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.",
    with_minimum_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_ttl" expected to be of type "number"';
      {
        minimum_ttl: converted,
      }
    ),
    forwarded_cookies:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_cookies_allow_list':: "The specific cookies to forward to your distribution's origin.",
      with_cookies_allow_list(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cookies_allow_list" expected to be of type "set"';
        {
          cookies_allow_list: converted,
        }
      ),
      '#with_cookies_allow_list_mixin':: "The specific cookies to forward to your distribution's origin.",
      with_cookies_allow_list_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cookies_allow_list" expected to be of type "set"';
        {
          cookies_allow_list+: converted,
        }
      ),
      '#with_option':: "Specifies which cookies to forward to the distribution's origin for a cache behavior: all, none, or allow-list to forward only the cookies specified in the cookiesAllowList parameter.",
      with_option(value):: (
        local converted = value;
        assert std.isString(converted) : '"option" expected to be of type "string"';
        {
          option: converted,
        }
      ),
    },
    forwarded_headers:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_headers_allow_list':: "The specific headers to forward to your distribution's origin.",
      with_headers_allow_list(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers_allow_list" expected to be of type "set"';
        {
          headers_allow_list: converted,
        }
      ),
      '#with_headers_allow_list_mixin':: "The specific headers to forward to your distribution's origin.",
      with_headers_allow_list_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers_allow_list" expected to be of type "set"';
        {
          headers_allow_list+: converted,
        }
      ),
      '#with_option':: 'The headers that you want your distribution to forward to your origin and base caching on.',
      with_option(value):: (
        local converted = value;
        assert std.isString(converted) : '"option" expected to be of type "string"';
        {
          option: converted,
        }
      ),
    },
    forwarded_query_strings:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_option':: 'Indicates whether the distribution forwards and caches based on query strings.',
      with_option(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"option" expected to be of type "bool"';
        {
          option: converted,
        }
      ),
      '#with_query_strings_allowed_list':: 'The specific query strings that the distribution forwards to the origin.',
      with_query_strings_allowed_list(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"query_strings_allowed_list" expected to be of type "set"';
        {
          query_strings_allowed_list: converted,
        }
      ),
      '#with_query_strings_allowed_list_mixin':: 'The specific query strings that the distribution forwards to the origin.',
      with_query_strings_allowed_list_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"query_strings_allowed_list" expected to be of type "set"';
        {
          query_strings_allowed_list+: converted,
        }
      ),
    },
    with_forwarded_cookies(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_cookies: value,
      }
    ),
    with_forwarded_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_headers: value,
      }
    ),
    with_forwarded_query_strings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_query_strings: value,
      }
    ),
    with_forwarded_cookies_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_cookies+: converted,
      }
    ),
    with_forwarded_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_headers+: converted,
      }
    ),
    with_forwarded_query_strings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_query_strings+: converted,
      }
    ),
  },
  default_cache_behavior:: {
    local block = self,
    new(behavior):: (
      {}
      + block.with_behavior(behavior)
    ),
    '#with_behavior':: 'The cache behavior of the distribution.',
    with_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"behavior" expected to be of type "string"';
      {
        behavior: converted,
      }
    ),
  },
  origin:: {
    local block = self,
    new(name, region_name):: (
      {}
      + block.with_name(name)
      + block.with_region_name(region_name)
    ),
    '#with_name':: 'The name of the origin resource.',
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    '#with_protocol_policy':: 'The protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content.',
    with_protocol_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol_policy" expected to be of type "string"';
      {
        protocol_policy: converted,
      }
    ),
    '#with_region_name':: 'The AWS Region name of the origin resource.',
    with_region_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"region_name" expected to be of type "string"';
      {
        region_name: converted,
      }
    ),
    '#with_resource_type':: 'The resource type of the origin resource (e.g., Instance).',
    with_resource_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
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
  with_cache_behavior(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_behavior: value,
    }
  ),
  with_cache_behavior_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_behavior_settings: value,
    }
  ),
  with_default_cache_behavior(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_cache_behavior: value,
    }
  ),
  with_origin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_cache_behavior_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_behavior+: converted,
    }
  ),
  with_cache_behavior_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_behavior_settings+: converted,
    }
  ),
  with_default_cache_behavior_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_cache_behavior+: converted,
    }
  ),
  with_origin_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin+: converted,
    }
  ),
}
