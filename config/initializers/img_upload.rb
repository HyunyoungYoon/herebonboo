CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     '',                        # required
    aws_secret_access_key: '',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    # host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'http://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'herebonboo'                          # required
  config.fog_public     = true                                        # optional, defaults to true
  config.fog_attributes = {} # { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end