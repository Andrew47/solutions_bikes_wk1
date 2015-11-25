require 'docking_station.rb'

describe DockingStation do
it "responds to release_bike" do
  expect(subject).to respond_to :release_bike
end
it "release_bike gets a bike" do
  bike = subject.release_bike
  expect(bike).to be_working
end
it "can doc to station" do
  expect(subject).to respond_to(:dock).with(1).argument
end
it "responds to bike" do
  expect(subject).to respond_to :bike
end
it "docks something" do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end
it "returns docked bikes" do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end
it "says false if no bikes" do
  expect { subject.release_bike }.to raise_error
end

end
