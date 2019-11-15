require 'bike'

describe Bike do
    it { is_expected.to respond_to :working?}

    it "check if the bikes working" do 
        expect(subject.working?).to eq(true)
    end
end