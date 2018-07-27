

class StaticPagesController < ApplicationController

  def home

    Flickr.configure do |config|
      config.api_key       = ENV['FLICKRAW_API_KEY']
      config.shared_secret =  ENV['FLICKRAW_SHARED_SECRET']
    end


  end

  def url
    id = params["staticpages"]["enter_id"]
    person = Flickr.people.find("#{id}")
    @photos = person.public_photos(sizes: true).map(&:medium500!)
  rescue => e
    render 'home'
    flash[:danger] = 'Invalid User'
  end


end
