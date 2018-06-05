#### Parameter definitions HighLanderTemplate
## 1. embed parameters in modules and set default values
## 2. expose metadata for highlander assembly to assemble master template

HighlanderComponent do

  Name 'Master'

  DynamicMappings 'DummyMappings'

  Parameters do
    StackParam 'EnvironmentName', 'dev1'
    StackParam 'EnvironmentType', 'dev'
  end

  # # directly from default branch
  Component name: 'vpc0', template: 'vpc'

  # specify branch github.com: or github: work. You specify branch with hash
  Component name: 'vpc1', template: 'github:theonestack/hl-component-vpc#master'

  # you can use git over ssh
  # Component name: 'vpc2', template: 'git:git@github.com:theonestack/hl-component-vpc.git'

  # use git over https
  Component name: 'vpc3', template: 'git:https://github.com/theonestack/hl-component-vpc.git'

  # specify .snapshot to always clone fresh copy
  Component name: 'vpc4', template: 'git:https://github.com/theonestack/hl-component-vpc.git#master.snapshot'

  # by default, if not found locally, highlander will search for https://github.com/theonestack/component-$componentname
  # in v${version} branch (or tag for that matter)
  Component name: 'vpc5', template: 'vpc@1.0.4'


  # be on a bleeding edge, always grab the latest as develop is default branch
  Component name: 'vpc6', template: 'vpc@develop.snapshot'

  # Locally defined components
  Component name: 'client2App', template: 'app'
  Component name: 'client3App', template: 'app'
  Component name: 's3one', template: 's3'
  Component name: 's3two', template: 's3'
  Component template: 's3'

  # If we explicitly provide parameters, stack params won't be exposed on top
  #   level stack, but rather passed values will be used
  Component name: 'vpc7', template: 'vpc', param_values: {
      'NetworkPrefix' => 10,
      'StackOctet' => 20
  }

  Component template: 'sns'
  Component template: 'sns@develop.snapshot', name: 'customsns'
  Component template: 'bastion'
  Component template: 'ecs'
  Component template: 'github.com:theonestack/hl-component-ecs-service#master.snapshot', name: 'nginx'
  Component name: 'lb1', template: 'loadbalancer'
  Component name: 'lb2', template: 'loadbalancer'

end
