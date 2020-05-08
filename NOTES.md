class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    #render 'birds/index.html.erb'
    #render plain: "Hello #{@birds[3].name}" #This isn't very fancy, but this is actually enough for us to start using our JavaScript skills and access with a fetch() request.
    render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
  end
end
