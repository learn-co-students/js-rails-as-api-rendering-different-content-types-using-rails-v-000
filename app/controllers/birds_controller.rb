class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render 'birds/index.html.erb'
    # render json: 'hi birds'
    # render json: {message: 'hi birds'}
    # render json: ['hi', 'birds']
    render jspn: @birds
  end
end
