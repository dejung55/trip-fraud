CarrierWave.configure do |config|
  
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJAO3M6NGVB4QCWFA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'travel1235'                          # required
  
end