class ApisController < ApplicationController
  def ship
    brand_length = Brand.all.length
    model_length = Model.all.length
    brand_num = prng.rand(1..brand_length)
    brand = Brand.all[brand_num]
    model_num = prng.rand(1..model_length)
    model_name = Model.all[model_num]
    model_num = prng.rand(1..model_length)
    model_number = Model.all[model_num]
    ship_name = "#{brand} #{model_name}-#{model_number}"
    respond_to do |format|
      format.json {render json: {ship_name: ship_name}}
    end
  end
end
