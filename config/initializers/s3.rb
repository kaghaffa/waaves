CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAIRK54LPMR5SFYG6Q',
      :aws_secret_access_key  => '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'
  }
  config.fog_directory  = 'waavescollabs'

end
