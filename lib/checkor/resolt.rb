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

  def to_text
    ''.tap do |out|
      out << arg_text
      out << ' => '
      if success?
        out << 'OK'
      else
        out << 'FAIL'
      end
    end
  end

  def arg_text
    case @args.length
    when 0
      '[missing args]'
    when 1
      @args.first
    else
      @args.join(' ')
    end
  end

  # here come our test
  #
  # may need refactoring ;-)
  def http_up?
    require 'open-uri'
    open @args.first do |h|
      html = h.read
      html.include?('<body')
    end
  end

end
