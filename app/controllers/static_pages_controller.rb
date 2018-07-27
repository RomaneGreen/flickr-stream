

class StaticPagesController < ApplicationController

  def home

 

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
