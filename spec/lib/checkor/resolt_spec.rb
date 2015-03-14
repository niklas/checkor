require File.expand_path '../../../spec_helper', __FILE__

describe Checkor::Resolt do
  subject { described_class.new opts }
  let(:opts) {{ args: ['something'] }}
  context '#is' do
    it 'remembers a predicate symbol' do
      subject.is :foo
      subject.predicate.should == :foo
    end
  end

  context '#success?' do
    it 'asks itself depending on predicate' do
      subject.is :big
      subject.stub(:big?).and_return( true )
      subject.should be_success
    end
  end
end

