class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}"
    
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here.'
    # Note: The line of code above works on the Rails server,
    # but I can't use json() on it in a fetch() request; use text() instead.

    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As', 'well', 'as', 'arrays']
    # render json: @birds
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] } # Implicit conversion to JSON
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json # Explicit conversion

    birds = Bird.all
    render json: birds
  end
end
