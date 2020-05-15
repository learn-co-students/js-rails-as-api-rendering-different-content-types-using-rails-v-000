class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render 'birds/index.html.erb'
  end
end


class BirdsController < ApplicationController

  def index
    @birds = Bird.all
    # render plain: "Hello #{@birds[3].name}"

    # render json: { message: 'Hashes of data will get converted to JSON' }
     render json: @birds
  end
end
