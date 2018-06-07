CfhighlanderComponent do


  Parameters do
    ComponentParam 'bucketname'
    ComponentParam 'EnvironmentName', isGlobal: true
    ComponentParam 'EnvironmentType', 'development',
        isGlobal: true,
        allowedValues: %w(development production)
  end

  Name 'component3 - Test CfhighlanderComponent Syntax'


end