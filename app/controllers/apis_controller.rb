class ApisController < ApplicationController
  def make
    create = RandomShip.new
    ship_name = create.make
    respond_to do |format|
      format.json {render json: {ship_name: ship_name}}
    end
  end
end
