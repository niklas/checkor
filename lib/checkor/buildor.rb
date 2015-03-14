class Checkor::Buildor

  attr_reader :args

  def that(*args)
    @args = args
    self
  end

  def is(predicate)
    @predicate = predicate
  end

end
