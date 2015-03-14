require File.expand_path '../../spec_helper', __FILE__

describe Checkor do

  describe '.run' do
    let(:out) { double 'IO', puts: true }

    it 'says hello' do
      out.should_receive(:puts)
      described_class.run(out)
    end

    it 'executes each `that` called on yielded object' do
      results = described_class.run do |check|
        check.that('http://google.de').is(:http_up)
      end

      result = results.first
      result.should_not be_nil
      result.should be_success
    end
  end

end

