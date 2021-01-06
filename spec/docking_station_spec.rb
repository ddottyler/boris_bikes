require 'docking_station'

describe DockingStation do

  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

  it { is_expected.to respond_to :release_bike }

  # it 'release a working bike' do
  #   bike = DockingStation.new.release_bike
  #   expect(bike).to be_working
  # end

  it {expect(subject.release_bike).to respond_to :working? }

  it 'responds to return_bike' do
    expect(DockingStation.new).to respond_to :dock
  end
  
  it 'returns docked bikes' do 
    bike = Bike.new
    DockingStation.new.dock(bike)
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike) }
end
