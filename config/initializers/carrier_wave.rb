if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => 'AKIAIA3MN5SQFUVDVP6A', #ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => 'WLlgrJhpT/bd6TumySukAYpMjCrzGJSX4TWKKl7W' #ENV['S3_SECRET_KEY']
    }
    config.fog_directory     =  'rails-sample-app-jovi' #ENV['S3_BUCKET']
  end
end
