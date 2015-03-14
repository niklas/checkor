class Checkor
  def self.run(*a, &block)
    new.run(*a, &block)
  end


  def run(out=nil, &block)
    out.puts "Hello" if out

    if block
      builder = Buildor.new
      block.yield builder
      builder.thats
    end
  end
end
require File.expand_path '../checkor/buildor', __FILE__
require File.expand_path '../checkor/resolt', __FILE__
