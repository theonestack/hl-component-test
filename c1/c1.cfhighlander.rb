CfhighlanderTemplate do


  Name 'paramautowire'

  # example1:
  #  - c2's parameter named OutputFromC3 should
  #    be automatically provided by autowiring mechanism
  #  - c2's parameter named OutputToBubbleToTheTopOrBeProvided does not have
  #    value provided and should automatically bubble to top of the stack
  Component 'c2'
  Component 'c3'


  # example2:
  # provide output parameter explicitly

  Component name: 'c3A', template: 'c3', config: { configkey: 'configvalue' }
  Component name: 'c2A', template: 'c2' do
    parameter name: 'OutputToBubbleToTheTopOrBeProvided', value: 'c3.OutputFromC3'
  end

  # Component 'ecs-cluster' do
  #   parameter name: 'IncomingSG', value: 'vpc.BastionSG'
  #   # output name: 'asg', value: "Ref('Asg')"
  # end
  #
  # Component 'bastion' do
  #   parameter name: 'OutgoingSG', value: 'vpc.BastionSG'
  #   # paramater name: 'ClusterAsg', value: 'ecs-cluster.asg'
  # end


  Parameters do
    ComponentParam 'Az1', '', type: 'AWS::EC2::AvailabilityZone::Name'
  end

end