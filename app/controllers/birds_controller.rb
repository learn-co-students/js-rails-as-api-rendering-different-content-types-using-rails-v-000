class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
    # no instance variables are needed w/o erb
    # plain: "Hello #{@birds[3].name}"
    # 'birds/index.html.erb'
  end
end
