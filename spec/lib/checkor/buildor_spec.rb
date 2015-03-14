require File.expand_path '../../../spec_helper', __FILE__

describe Checkor::Buildor do
  describe '#that' do

    it 'stores its arguments for later' do
      service = subject.that(:thing)
      service.should respond_to(:is)
      service.args.should == [:thing]
    end

  end
end

