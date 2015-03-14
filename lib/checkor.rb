class Checkor
  def self.run(*a, &block)
    new.run(*a, &block)
  end


  def run(out=nil, &block)
    out.puts "Hello" if out

    if block
      builder = Buildor.new
      block.yield builder
      run_builder builder
    end
  end

  def run_builder(builder)

  end
end
require File.expand_path '../checkor/buildor', __FILE__
