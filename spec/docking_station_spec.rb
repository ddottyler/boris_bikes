require 'docking_station'

describe DockingStation do

  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

  # it { is_expected.to respond_to :release_bike }

  # it 'release a working bike' do
  #   bike = DockingStation.new.release_bike
  #   expect(bike).to be_working
  # end

  # it {expect(subject.release_bike).to respond_to :working? }

  it 'responds to return_bike' do
    expect(DockingStation.new).to respond_to :dock
  end

  it 'returns docked bikes' do
    bike = Bike.new
    DockingStation.new.dock(bike)
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike) }

  # it 'returns an error when no bikes are left' do
  #   expect {subject.release_bike}.to raise_error
  # end

  describe '#release_bike' do 
    it 'release a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end  

    it 'raises an error when there are no bikes available' do 
      expect { subject.release_bike }.to raise_error 'No bike available'
    end 
  end 

end
