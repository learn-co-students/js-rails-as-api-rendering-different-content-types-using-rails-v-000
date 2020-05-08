class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    #render 'birds/index.html.erb'
    #render plain: "Hello #{@birds[3].name}" #This isn't very fancy, but this is actually enough for us to start using our JavaScript skills and access with a fetch() request.
     #To render JSON from a Rails controller, you specify json: followed by data that can be converted to valid JSON:
    #render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    #render json: ['As','well','as','arrays']
    #render json: @birds 

    #We can choose to explicitly convert our array or hash, without any problem by adding to_json to the end:
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    #Now that we are directly rendering to JSON in the same action, we no longer need to deal with instance variables and can instead just use a local variable:
    render json: birds
  end
end
