class ShipsController < ApplicationController
  def show
    create = RandomShip.new
    @ship_name = create.make
  end
end
