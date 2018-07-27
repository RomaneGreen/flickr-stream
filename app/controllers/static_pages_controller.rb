
class StaticPagesController < ApplicationController

  def home

  end

  def url

base_url = "https://www.flickr.com/photos/"

id = params["staticpages"]["enter_id"]

photostream = base_url+"#{id}"

redirect_to photostream
  end


end
