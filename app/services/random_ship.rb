class RandomShip

  def initialize
    @numbers = Array(0..9)
    @letters = Array('A'..'Z')
  end

  def letter
    prng = Random.new
    length = prng.rand(1..4)
    return model_letter = @letters.sample(length).join
  end

  def number
    prng = Random.new
    length = prng.rand(2..4)
    return model_number = @numbers.sample(length).join
  end

  def model
    lets = letter
    nums = number
    return total = "#{lets}-#{nums}"
  end

  def brand
    return brand_name = Brand.all.sample.name
  end

  def make
    model_num = model
    brand_name_pick = brand
    return "#{brand_name_pick} #{model_num}"
  end
end