# frozen_string_literal: true

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws' # required
  config.fog_credentials = {
    provider: 'AWS', # required
    aws_access_key_id: ENV['AWS_KEY'], # required unless using use_iam_profile
    aws_secret_access_key: ENV['AWS_SECRET'], # required unless using use_iam_profile
    use_iam_profile: false, # optional, defaults to false
    region: 'eu-central-1', # optional, defaults to 'us-east-1'
    path_style: true
  }
  config.fog_directory  = 'rails-workshop-2019' # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
