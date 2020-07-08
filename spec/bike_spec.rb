require 'bike'

describe Bike do
  describe "working?" do
    subject { Bike.new.working? }
      it { is_expected.to eq true }
  end
end