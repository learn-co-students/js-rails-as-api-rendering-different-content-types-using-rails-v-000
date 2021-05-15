class BirdsController < ApplicationController
  def index
    # instance variable not required since all handling happens within the action
    birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}"
    render json: birds
  end
end
