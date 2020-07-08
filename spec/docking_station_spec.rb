require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  
  it "releases working bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
    expect(bike).to be_working
  end
    
  it "raises an error when no bikes are available" do
    expect {subject.release_bike}.to raise_error "No bikes available"
  end
  
  it "raises an error when docking station is full" do
    20.times { subject.dock Bike.new }
    expect{subject.dock Bike.new}.to raise_error "Docking station full"
  end
    
  it "docks a bike" do
    bike = subject.dock(bike)
    expect(subject.dock(bike)).to eq bike
  end
  
  it "checks for a docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[0]).to eq bike
  end
end