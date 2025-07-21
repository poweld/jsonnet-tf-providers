{
  local block = self,
  new(container_name, task_definition):: (
    {}
    + block.with_container_name(container_name)
    + block.with_task_definition(task_definition)
  ),
  with_container_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_name" expected to be of type "string"';
    {
      container_name: converted,
    }
  ),
  with_cpu(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cpu" expected to be of type "number"';
    {
      cpu: converted,
    }
  ),
  with_disable_networking(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_networking" expected to be of type "bool"';
    {
      disable_networking: converted,
    }
  ),
  with_docker_labels(value):: (
    local converted = value;
    assert std.isObject(converted) : '"docker_labels" expected to be of type "map"';
    {
      docker_labels: converted,
    }
  ),
  with_environment(value):: (
    local converted = value;
    assert std.isObject(converted) : '"environment" expected to be of type "map"';
    {
      environment: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image(value):: (
    local converted = value;
    assert std.isString(converted) : '"image" expected to be of type "string"';
    {
      image: converted,
    }
  ),
  with_image_digest(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_digest" expected to be of type "string"';
    {
      image_digest: converted,
    }
  ),
  with_memory(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"memory" expected to be of type "number"';
    {
      memory: converted,
    }
  ),
  with_memory_reservation(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"memory_reservation" expected to be of type "number"';
    {
      memory_reservation: converted,
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
  with_task_definition(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_definition" expected to be of type "string"';
    {
      task_definition: converted,
    }
  ),
}
