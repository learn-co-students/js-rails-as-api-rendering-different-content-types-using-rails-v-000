class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
    # @birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: @birds.map{|b| b.name }
    #render json: @birds
    # render json: { birds: @birds, message: 'Ve like ze colors!'}
  end
end
