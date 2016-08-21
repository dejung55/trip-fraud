CarrierWave.configure do |config|
  
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJP2VF2HKVXTVO3NA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'travel1111'                          # required
  
end