HighlanderComponent do


  Name 'component2 - Test HhighlanderComponent Syntax'

  Parameters do
    ComponentParam 'OutputFromC3'
    ComponentParam 'OutputToBubbleToTheTopOrBeProvided'
    ComponentParam 'EnvironmentName', isGlobal: true
    ComponentParam 'EnvironmentType', 'development',
        isGlobal: true,
        allowedValues: %w(development production)
  end

end