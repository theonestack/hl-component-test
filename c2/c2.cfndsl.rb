CloudFormation do


  S3_Bucket :bucketname do
    BucketName Ref('OutputFromC3')
  end


end