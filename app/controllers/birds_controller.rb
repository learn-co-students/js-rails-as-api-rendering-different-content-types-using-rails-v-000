class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
    # plain: "Hello #{@birds[3].name}"
    # 'birds/index.html.erb'
  end
end
