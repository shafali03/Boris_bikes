require 'docking_station'

describe DockingStation do 
    it { is_expected. to respond_to :release_bike } 

    it 'release working bikes' do
      # call release_bike and store the returned bike
      bike = subject.release_bike
      # check that the bike is working
      expect(bike).to be_working
    end

    describe "#dock" do 
      it {is_expected.to respond_to(:dock).with(1).argument }
      
      # first, lets update our test for #dock
      it 'dock something' do
        bike = Bike.new
        station = DockingStation.new
        #we want to return the bike we dock
        expect(station.dock(bike)).to eq bike
      end
    end 
    
end