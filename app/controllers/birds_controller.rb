class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    # this is explicitly saying what to render
    # render 'birds/index.html.erb'

    # Plain text 
    # render plain: "Hello #{@birds[2].name}"

    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'

    # We can pass strings as we see above, as well as hashes, arrays, and other data types:

    # render json: { message: 'Hashes of data will get converted to JSON' }

    # render json: ['As','well','as','arrays']

    # render json: @birds

    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }

    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json

    # Say goodbye to instance variables
    birds = Bird.all
    render json: birds
  end
end
