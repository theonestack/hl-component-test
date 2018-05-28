HighlanderComponent do

  Name 'application'

  Parameters do

    MappingParam 'AmiId',amazonlinuxami do
      map 'AMIs'
      key ({'Ref' => 'AWS::Region'})
      attribute 'ApplicationAmi'
    end

  end

end