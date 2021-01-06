require_relative 'bike'

class DockingStation

    def release_bike
      Bike.new
    end

   def return_bike
    puts "bike returned"
   end

   def inspect_bike
   end

end

