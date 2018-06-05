CfhighlanderComponent do

  Name "app1234567"
  # Description "Description for component #{component_name}"

  Parameters do

    MappingParam 'AmiId',amazonlinuxami do
      map 'AMIs'
      key ({'Ref' => 'AWS::Region'})
      attribute 'ApplicationAmi'
    end

  end

end