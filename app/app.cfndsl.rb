CloudFormation do

  Parameter 'AmiId' do
    Type 'String'
  end

  EC2_Instance('AppInstance') do

    ImageId Ref('AmiId')

  end


end