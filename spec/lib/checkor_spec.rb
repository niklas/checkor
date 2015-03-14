require File.expand_path '../../spec_helper', __FILE__

describe Checkor do

  describe '.run' do
    let(:out) { double 'IO' }
    it 'says hello' do
      out.should_receive(:puts)
      described_class.run(out)
    end
  end

end

