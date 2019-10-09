class BirdsController < ApplicationController
  def index
    # no longer need to use instance variables
    birds = Bird.all
    render json: birds
  end
end
