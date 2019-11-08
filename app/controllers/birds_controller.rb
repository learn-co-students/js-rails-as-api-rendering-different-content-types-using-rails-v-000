class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    #we really only needed instance variables when we were rendering to ERB. Now that we are directly rendering to JSON in the same action, 
    # we no longer need to deal with instance variables and can instead just use a local variable

    # line 4 can also be written as => render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    # The to_json method is made available to both arrays and hashes in Rails, but is not natively available to them in Ruby. 
    # It does exactly what it says - it takes whatever array or hash it is called on and converts it to JSON.
    # Rails favors convention as well as a clean and clutter free controller, so it has some built in 'magic' to handle things like this and 
    # keep us from having to write to_json on the same line as render json: in every action we write.
  end
end
