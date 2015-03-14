class Checkor::Resolt
  attr_reader :args
  attr_reader :predicate
  def initialize(opts={})
    @args = opts.fetch(:args)
  end

  def is(predicate)
    unless predicate.is_a?(Symbol)
      raise ArgumentError, 'please just give a symbol to #is(:http_up)'
    end
    @predicate = predicate
  end

  def success?
    unless @predicate
      raise ArgumentError, "please say what #{@args.inspect} should be with #is(:http_up)"
    else
      public_send :"#{@predicate}?"
    end
  end

  # here come our test
  #
  # may need refactoring ;-)
  def http_up?
    true
  end

end
