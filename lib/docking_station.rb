require_relative 'bike'

class DockingStation
  attr_reader :bikes
    def initialize
      @bikes = []
    end
  
    def release_bike
        raise "No bikes available" unless @bikes.length > 0
        @bikes.pop
    end
    
    def dock(bike)
      raise "Docking station full" if @bikes.length >= 20
      @bikes << bike
    end
end
