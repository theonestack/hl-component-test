HighlanderComponent do
  Name 's3'
  Parameters do
    StackParam 'EnvironmentName','dev', isGlobal:true
    StackParam 'BucketName','cfhighlander.example.com.au', isGlobal:false
  end
end