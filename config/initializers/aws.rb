CarrierWave.configure do |config|
  
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIPCXJLQB2HZ55K3Q',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'travel12'                          # required
  config.fog_public     = true                                         # optional, defaults to true
  config.fog_attributes = {} # optional, defaults to {}
end