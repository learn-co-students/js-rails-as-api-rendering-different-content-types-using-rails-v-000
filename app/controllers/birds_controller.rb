class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}"
    # render json: "Remember that JSON is just object notation converted to string data, so strings also work here #{@birds[3].name}"
    # render json: { message: "Hashes of data will get converted to JSON" }
    # render json: ['as', 'well', 'as', 'arrays']
    # render json: @birds
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    # fetch('http://localhost:3000/birds').then(response => response.text()).then(text => console.log(text))
    # fetch('http://localhost:3000/birds').then(response => response.json()).then(object => console.log(object))
  end
end
