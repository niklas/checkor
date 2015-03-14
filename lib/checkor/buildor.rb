class Checkor::Buildor

  attr_reader :args
  attr_reader :thats

  def initialize
    @thats = []
  end

  def that(*args)
    x = Checkor::Resolt.new(args: args)
    @thats << x
    x
  end
end
