CloudFormation do


  S3_Bucket :bucket do
    BucketName Ref('bucketname')
  end

  Output('OutputFromC3') do
    Value(FnJoin('', ['c3output.bucket.', Ref('bucket')]))
  end

end