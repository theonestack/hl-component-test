#### Parameter definitions HighLanderTemplate
## 1. embed parameters in modules and set default values
## 2. expose metadata for highlander assembly to assemble master template

CfhighlanderTemplate do

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
  Component name: 'snsfromgithttps', template: 'git:https://github.com/theonestack/hl-component-sns.git'

  # specify .snapshot to always clone fresh copy
  Component name: 'snsfromsnapshot', template: 'git:https://github.com/theonestack/hl-component-sns.git#master.snapshot'

  # by default, if not found locally, highlander will search for https://github.com/theonestack/component-$componentname
  # in v${version} branch (or tag for that matter)
  Component name: 'vpc5', template: 'vpc@1.0.4'


  # Locally defined components
  Component name: 'client2App', template: 'app', conditional: true
  Component name: 'client3App', template: 'app', conditional: true, enabled: false
  Component name: 's3one', template: 's3'
  Component name: 's3two', template: 's3'
  Component template: 's3'

  # If we explicitly provide parameters, stack params won't be exposed on top
  #   level stack, but rather passed values will be used
  Component name: 'vpc7', template: 'vpc' do
    parameter name: 'NetworkPrefix', value: 10
    parameter name: 'StackOctet', value: 20
  end

  Component template: 'sns'
  Component template: 'sns@master.snapshot', name: 'customsns'
  Component template: 'bastion'
  Component template: 'ecs'
  Component template: 'ecs-service', conditional: true, enabled: false
  Component template: 'github.com:theonestack/hl-component-ecs-service#master.snapshot', name: 'nginx'
  Component name: 'lb1', template: 'loadbalancer'
  Component name: 'lb2', template: 'loadbalancer'

  # component by template name, no keyword args
  Component 'c1'
  Component 'ineedexternalconfig'
end
