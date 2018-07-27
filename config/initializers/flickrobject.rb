Flickr.configure do |config|
  config.api_key       = ENV['FLICKRAW_API_KEY']
  config.shared_secret =  ENV['FLICKRAW_SHARED_SECRET']
end
