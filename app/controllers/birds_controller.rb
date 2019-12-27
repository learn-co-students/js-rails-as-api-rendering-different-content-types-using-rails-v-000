class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    # render 'birds/index.html.erb'
    # how to render above going forward. no longer have to deal with instance variables because
    # we are directly rendering to JSON in the same action
    birds = Bird.all
    render json: birds
  end
end
