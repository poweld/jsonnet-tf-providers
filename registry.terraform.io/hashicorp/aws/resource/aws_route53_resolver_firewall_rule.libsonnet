{
  local block = self,
  new(action, firewall_domain_list_id, firewall_rule_group_id, name, priority):: (
    {}
    + block.with_action(action)
    + block.with_firewall_domain_list_id(firewall_domain_list_id)
    + block.with_firewall_rule_group_id(firewall_rule_group_id)
    + block.with_name(name)
    + block.with_priority(priority)
  ),
  with_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  with_block_override_dns_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"block_override_dns_type" expected to be of type "string"';
    {
      block_override_dns_type: converted,
    }
  ),
  with_block_override_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"block_override_domain" expected to be of type "string"';
    {
      block_override_domain: converted,
    }
  ),
  with_block_override_ttl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"block_override_ttl" expected to be of type "number"';
    {
      block_override_ttl: converted,
    }
  ),
  with_block_response(value):: (
    local converted = value;
    assert std.isString(converted) : '"block_response" expected to be of type "string"';
    {
      block_response: converted,
    }
  ),
  with_firewall_domain_list_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_domain_list_id" expected to be of type "string"';
    {
      firewall_domain_list_id: converted,
    }
  ),
  with_firewall_domain_redirection_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_domain_redirection_action" expected to be of type "string"';
    {
      firewall_domain_redirection_action: converted,
    }
  ),
  with_firewall_rule_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_rule_group_id" expected to be of type "string"';
    {
      firewall_rule_group_id: converted,
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
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  with_q_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"q_type" expected to be of type "string"';
    {
      q_type: converted,
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
}
